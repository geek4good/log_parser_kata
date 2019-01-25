module LogParserKata
  class Parser
    attr_reader :server_log

    def initialize(server_log)
      @server_log = server_log
    end

    def paths_by_total_views
      @paths_by_total_views ||= log_lines_by_path.
        keys.
        map { |path| [path, log_lines_by_path[path].size] }.
        sort_by(&:last).
        reverse
    end

    def paths_by_unique_views
      @paths_by_unique_views ||= log_lines_by_path.
        keys.
        map { |path| [path, log_lines_by_path[path].uniq.size] }.
        sort_by(&:last).
        reverse
    end

    private

    def log_lines
      @log_lines ||= server_log.split("\n").map { |line| line.split(/\s+/) }
    end

    def log_lines_by_path
      @log_lines_by_path ||= log_lines.group_by(&:first)
    end
  end
end
