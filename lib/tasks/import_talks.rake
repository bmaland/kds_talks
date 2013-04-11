namespace :kds do
  desc "Import talks"
  task :import_talks => :environment do
    print "Importing talks.."
    require_relative '../kds_program_import'
    kds_program_import
    puts "..done!"
  end
end
