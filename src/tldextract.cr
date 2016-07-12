require "./tldextract/*"

module TLDExtract
  struct Extracted
    property subdomain, domain, suffix

    def initialize(@subdomain : String, @domain : String, @suffix : String)
    end
  end

  class TLDExtract
    def extract(url : String)
      Extracted.new("www", "github", "com")
    end
  end
end
