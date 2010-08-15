class CreateVerses < ActiveRecord::Migration
  def self.up
    create_table :verses do |t|
      t.string :book
      t.integer :begin
      t.integer :end
      t.text :text
      t.integer :sermon_id

      t.timestamps
    end
  end

  def self.down
    drop_table :verses
  end
end
