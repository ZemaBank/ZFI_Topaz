module M2yTopaz
  class Configuration
    attr_writer :server_url, :certification, :proxy, :env

    def initialize
      @server_url = nil
      @certification = nil
      @env = nil
    end

    def server_url
      @server_url
    end

    def certification
      @certification
    end

    def proxy
      @proxy
    end

    def env
      @env
    end

    def production?
      env.to_s.upcase == 'PRD'
    end
  end
end
