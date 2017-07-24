require 'spec_helper'
require 'securerandom'

RSpec.describe InternetArchive do
  new_url = "https://twitter.com/#{SecureRandom.uuid}/status/441722495792476161"
  it 'has a version number' do
    expect(InternetArchive::VERSION).not_to be nil
  end

  it "submits #{new_url} to wayback machine" do
    InternetArchive::WaybackMachine.submit(new_url)
  end

  it "submits #{new_url} to archive.is" do
    InternetArchive::ArchiveIs.submit(new_url)
  end
end
