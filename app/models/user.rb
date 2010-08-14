class User < ActiveRecord::Base
  include Clearance::User
  include CaptainOveur::User
end
