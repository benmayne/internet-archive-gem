require 'net/http'

module InternetArchive
  module ArchiveIs
    BASE_URL = 'https://archive.fo'
    HEADER = {'content-type' => 'application/x-www-form-urlencoded',
              'accept' => 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
              'cache-control' => 'max-age=0'}
    def self.submit(url)
      uri = URI("#{BASE_URL}/submit/")
      Net::HTTP.post(uri, URI.encode_www_form({'url' => url}))
    end
  end
end
