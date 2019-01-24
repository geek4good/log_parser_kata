require "open3"

RSpec.describe "bin/parse" do
  subject(:bin_parse) { File.expand_path("../../../bin/parse", __FILE__) }
  let(:log_file) { File.expand_path("../../fixtures/webserver.log", __FILE__) }
  let(:output) { File.read(File.expand_path("../../fixtures/output.txt", __FILE__)) }

  it "parses a log file and outputs some useful stats" do
    stdout, status = Open3.capture2e(bin_parse, log_file)

    expect(stdout).to eq(output)
    expect(status.to_i).to eq(0)
  end

  context "given argument doesn't exist" do
    let(:log_file) { "non-existent-file" }

    it "returns a non-zero exit code" do
      _, status = Open3.capture2e(bin_parse, log_file)

      expect(status.to_i).to_not eq(0)
    end
  end

  context "no argument given" do
    it "returns a non-zero exit code" do
      _, status = Open3.capture2e(bin_parse)

      expect(status.to_i).to_not eq(0)
    end
  end
end
