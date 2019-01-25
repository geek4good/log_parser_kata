RSpec.describe LogParserKata::Parser do
  subject(:parser) { described_class.new(server_log) }

  let(:server_log) { File.read(log_file) }
  let(:log_file) { File.expand_path("../../../fixtures/webserver.log", __FILE__) }

  describe "#initialize" do
    it "assigns the server log given" do
      expect(parser.server_log).to eq(server_log)
    end
  end

  describe "#paths_with_total_views" do
    it "returns an array of arrays of paths and total views" do
      paths_with_total_views = parser.paths_with_total_views

      expect(paths_with_total_views).to_not be_empty
      paths_with_total_views.each do |(path, count)|
        expect(path).to match(%r,/\w+(/\w+)?,)
        expect(count).to be_integer
      end
    end
  end

  describe "#paths_with_unique_views" do
    it "returns an array of arrays of paths and unique views" do
      paths_with_unique_views = parser.paths_with_unique_views

      expect(paths_with_unique_views).to_not be_empty
      paths_with_unique_views.each do |(path, count)|
        expect(path).to match(%r,/\w+(/\w+)?,)
        expect(count).to be_integer
      end
    end
  end
end
