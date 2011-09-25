class Project < ActiveRecord::Base
 has_many :tasks

  def self.all_names
    find(:all).collect(&:name).collect(&:downcase)
  end
end
