module LogParserKata
  class Parser
    attr_reader :server_log

    def initialize(server_log)
      @server_log = server_log
    end
  end
end
