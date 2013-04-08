namespace :nuke do
  desc "TODO"
  task :all => :environment do
    ActiveRecord::Base.connection.execute("truncate table commands")
    ActiveRecord::Base.connection.execute("truncate table hostgroups")
    ActiveRecord::Base.connection.execute("truncate table servers")
    ActiveRecord::Base.connection.execute("truncate table services")
  end

end
