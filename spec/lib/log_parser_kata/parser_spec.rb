RSpec.describe LogParserKata::Parser do
  subject(:parser) { described_class.new(server_log) }

  let(:server_log) { File.read(log_file) }
  let(:log_file) { File.expand_path("../../../fixtures/webserver.log", __FILE__) }

  describe "#initialize" do
    it "assigns the server log given" do
      expect(parser.server_log).to eq(server_log)
    end
  end
end
