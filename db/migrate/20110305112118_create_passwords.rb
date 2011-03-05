class CreatePasswords < ActiveRecord::Migration
  def self.up
    create_table :passwords do |t|
      t.string :link
      t.string :name
      t.string :login
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :passwords
  end
end
