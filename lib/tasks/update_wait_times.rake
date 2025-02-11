namespace :abc do 
  desc "Update database with new border wait times"
  task :update_wait_times => :environment do

    puts "Starting Wait Times Job..."

    Port.scrape_port_wait_times("https://bwt.cbp.gov/xml/bwt.xml")

    puts "Job completed successfully!"
  end

end