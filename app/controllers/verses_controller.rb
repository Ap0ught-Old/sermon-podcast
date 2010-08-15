class VersesController < ApplicationController
  before_filter :admin_only
  
  def new
    @verse = Verse.new
  end
end