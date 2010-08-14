class User < ActiveRecord::Base
  include Clearance::User
  include CaptainOveur::User
  
  has_many :sermons
end
