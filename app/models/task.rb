class Task < ActiveRecord::Base
  belongs_to :project
  
  def self.find_incomplete(options = {})
    with_scope :find => options do
      find_all_by_is_complete(false)	
    end
  end	

end
