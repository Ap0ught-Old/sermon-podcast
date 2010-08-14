class CreateSermons < ActiveRecord::Migration
  def self.up
    create_table :sermons do |t|
      t.string :title
      t.datetime :date
      t.text :description
      t.string :video_url
      t.string :audio_url

      t.timestamps
    end
  end

  def self.down
    drop_table :sermons
  end
end
