class AddPersonIdToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :person_id, :integer
  end

  def self.down
    remove_column :items, :person_id
  end
end
