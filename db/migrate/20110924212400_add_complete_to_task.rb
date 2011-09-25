class AddCompleteToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :is_complete, :boolean, :default => false
  end

  def self.down
    remove_column :tasks, :is_complete
  end
end
