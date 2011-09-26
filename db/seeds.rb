require 'active_record/fixtures'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "tasks")
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "projects")
p "-- start insert users"
Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "users")
