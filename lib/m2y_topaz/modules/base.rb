module M2yTopaz
  class Base
    def self.base_url
      M2yTopaz.configuration.server_url
    end

    def self.base_headers
      headers = {}
      headers['X-Api-Key'] = M2yTopaz.configuration.certification
      headers
    end

    def self.fixie
      URI.parse M2yTopaz.configuration.proxy
    end

    def self.post(url, body, headers = nil)
      if headers.nil?
        headers = base_headers
      end
      # puts "Sending POST request to URL: #{url}"
      # puts body
      HTTParty.post(url, headers: headers, body: body.to_json,
                    http_proxyaddr: fixie.host,
                    http_proxyport: fixie.port,
                    http_proxyuser: fixie.user,
                    http_proxypass: fixie.password)
    end
  end
end