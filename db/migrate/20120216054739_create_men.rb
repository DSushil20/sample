class CreateMen < ActiveRecord::Migration
  def self.up
    create_table :men do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :men
  end
end
