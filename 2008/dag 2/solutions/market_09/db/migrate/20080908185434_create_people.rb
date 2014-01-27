class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :password_hash

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
