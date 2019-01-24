require "open3"

RSpec.describe "bin/parse" do
  subject(:bin_parse) { File.expand_path("../../../bin/parse", __FILE__) }
  let(:log_file) { File.expand_path("../../fixtures/webserver.log")}

  it "parses a log file and outputs some useful stats" do
    output, status = Open3.capture2("#{bin_parse} #{log_file}")

    expect(output).to eq("")
  end
end
