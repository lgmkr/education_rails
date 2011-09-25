desc 'Create YAML test fixtures from data in an existing database.  Defaults to development database.  Set RAILS_ENV to override.'

task :extract_fixtures => :environment do
  directory = "test/fixtures"
  sql  = "SELECT * FROM %s"
  skip_tables = ["schema_info", "geo_ip_countries", "users"]
  ActiveRecord::Base.establish_connection
  (ActiveRecord::Base.connection.tables - skip_tables).each do |table_name|
    path = "#{RAILS_ROOT}/#{directory}/#{table_name}.yml"
    i = "000"
    File.new(path, "w") unless File.exists?(path)
    File.open(path, 'w') do |file|
      data = ActiveRecord::Base.connection.select_all(sql % table_name)
      file.write data.inject({}) { |hash, record|
        hash["#{table_name}_#{i.succ!}"] = record
        hash
      }.to_yaml
    end
  end
end
