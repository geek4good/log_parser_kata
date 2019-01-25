RSpec.describe LogParserKata::Formatter do
  subject(:formatter) { described_class.new(total_views: views, unique_views: views) }

  let(:views) { [["/contact", 89], ["/index", 32]] }

  describe "#initialize" do
    it "assigns the given arguments" do
      expect(formatter.total_views).to eq(views)
      expect(formatter.unique_views).to eq(views)
    end
  end

  describe "#to_s" do
    it "returns a formatted string" do
      expect(formatter.to_s).to eq(<<~OUTPUT)
        Paths by total views:

        /contact 89
        /index 32

        Paths by unique views:

        /contact 89
        /index 32

      OUTPUT
    end
  end
end
