class UpdateSermonForUploads < ActiveRecord::Migration
  def self.up
    remove_column :sermons, :video_url
    remove_column :sermons, :audio_url
  end

  def self.down
  end
end
