class Verse < ActiveRecord::Base
  belongs_to :sermon, :class_name => "Sermon"
  
  validates_presence_of :book, :chapter, :begin, :end, :text, :sermon_id
  
end
