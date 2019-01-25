RSpec.describe LogParserKata::Parser do
  subject(:parser) { described_class.new(server_log) }

  let(:server_log) { File.read(log_file) }
  let(:log_file) { File.expand_path("../../../fixtures/webserver.log", __FILE__) }

  describe "#initialize" do
    it "assigns the server log given" do
      expect(parser.server_log).to eq(server_log)
    end
  end

  describe "#paths_by_total_views" do
    it "returns an array of arrays of paths and total views ordered by the latter" do
      paths_by_total_views = parser.paths_by_total_views

      expect(paths_by_total_views).to_not be_empty
      paths_by_total_views.each do |(path, count)|
        expect(path).to match(%r,/\w+(/\w+)?,)
        expect(count).to be_integer
      end
      expect(paths_by_total_views.first.last > paths_by_total_views.last.last).to be true
    end
  end
end
