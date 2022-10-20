module M2yTopaz
  class Analytics < Base
    # /analytics
    def self.analytics(body)
      post(base_url + , body)
    end
  end
end