module LogParserKata
  class Formatter
    attr_reader :total_views, :unique_views

    def initialize(total_views:, unique_views:)
      @total_views = total_views
      @unique_views = unique_views
    end

    def to_s
      <<~OUTPUT
      Paths by total views:

      #{total_views.map { |entry| entry.join(" ") }.join("\n")}

      Paths by unique views:

      #{unique_views.map { |entry| entry.join(" ") }.join("\n")}

      OUTPUT
    end
  end
end
