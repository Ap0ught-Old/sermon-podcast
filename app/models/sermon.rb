class Sermon < ActiveRecord::Base
 belongs_to :user
 has_many :verses, :class_name => 'verse', :foreign_key => 'sermon_id'
 has_attached_file :audio, 
  :storage => :s3,
  :s3_credentials => File.join(Rails.root, 'config', 's3.yml'),
  :path => "sermons/:id/audio/:id.mp3",
  :bucket => 'sermon_podcast'
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
end
