class SermonsController < ApplicationController
  before_filter :admin_only, :only => [ :update, :destroy, :edit, :new ]
  
  # GET /sermons
  # GET /sermons.xml
  def index
    @sermons = Sermon.find(:all, :order => 'date desc')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :rss => @sermons }
    end
  end

  # GET /sermons/1
  # GET /sermons/1.xml
  def show
    @sermon = Sermon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sermon }
    end
  end

  # GET /sermons/new
  # GET /sermons/new.xml
  def new
    @sermon = Sermon.new
    @verse = Verse.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sermon }
    end
  end

  # GET /sermons/1/edit
  def edit
    @sermon = Sermon.find(params[:id])
  end

  # POST /sermons
  # POST /sermons.xml
  def create
    @sermon = Sermon.new(params[:sermon])

    respond_to do |format|
      if @sermon.save
        format.html { redirect_to(@sermon, :notice => 'Sermon was successfully created.') }
        format.xml  { render :xml => @sermon, :status => :created, :location => @sermon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sermon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sermons/1
  # PUT /sermons/1.xml
  def update
    @sermon = Sermon.find(params[:id])

    respond_to do |format|
      if @sermon.update_attributes(params[:sermon])
        format.html { redirect_to(@sermon, :notice => 'Sermon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sermon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sermons/1
  # DELETE /sermons/1.xml
  def destroy
    @sermon = Sermon.find(params[:id])
    @sermon.destroy

    respond_to do |format|
      format.html { redirect_to(sermons_url) }
      format.xml  { head :ok }
    end
  end
end
