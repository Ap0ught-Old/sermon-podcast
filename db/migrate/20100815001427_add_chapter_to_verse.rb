class AddChapterToVerse < ActiveRecord::Migration
  def self.up
    change_table(:verses) do |t|
      t.integer :chapter
    end
  end

  def self.down
    change_table(:verses) do |t|
      t.remove :chapter
    end
  end
end
