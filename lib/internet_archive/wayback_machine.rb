require 'net/http'

module InternetArchive
  module WaybackMachine
    BASE_URL = 'https://web.archive.org'
    def self.submit(url)
      uri = URI("#{BASE_URL}/save/#{url}")
      Net::HTTP.get_response(uri)
    end
  end
end
