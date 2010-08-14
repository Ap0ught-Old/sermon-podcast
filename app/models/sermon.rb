class Sermon < ActiveRecord::Base
 
  has_attached_file :audio, 
    :storage => :s3,
    :s3_credentials => File.join(Rails.root, 'config', 's3.yml'),
    :path => "sermons/:id/audio/:id.mp3",
    :bucket => 'sermon_podcast'
  
  validates_presence_of :title
  
end
