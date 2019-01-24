module LogParserKata
  class Parser
    attr_reader :server_logs

    def initialize(server_logs)
      @server_logs = server_logs
    end
  end
end
