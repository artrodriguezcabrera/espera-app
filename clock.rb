require 'clockwork'
require './config/boot'
require './config/environment'
require 'nokogiri'
require 'open-uri'

module Clockwork
  handler do |job|
    puts "Running #{job}"

    Port.scrape_port_wait_times("https://apps.cbp.gov/bwt/bwt.xml")
    puts "Success!"
  end

  # handler receives the time when job is prepared to run in the 2nd argument
  # handler do |job, time|
  #   puts "Running #{job}, at #{time}"
  # end

  every(60.minutes, 'scraper.job')

end
