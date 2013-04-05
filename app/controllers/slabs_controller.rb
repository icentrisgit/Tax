class SlabsController < ApplicationController
  # GET /slabs
  # GET /slabs.json
  def index
    @slabs = Slab.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @slabs }
    end
  end

  # GET /slabs/1
  # GET /slabs/1.json
  def show
    @slab = Slab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @slab }
    end
  end

  # GET /slabs/new
  # GET /slabs/new.json
  def new
    @slab = Slab.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @slab }
    end
  end

  # GET /slabs/1/edit
  def edit
    @slab = Slab.find(params[:id])
  end

  # POST /slabs
  # POST /slabs.json
  def create
    @slab = Slab.new(params[:slab])

    respond_to do |format|
      if @slab.save
        format.html { redirect_to @slab, :notice => 'Slab was successfully created.' }
        format.json { render :json => @slab, :status => :created, :location => @slab }
      else
        format.html { render :action => "new" }
        format.json { render :json => @slab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /slabs/1
  # PUT /slabs/1.json
  def update
    @slab = Slab.find(params[:id])

    respond_to do |format|
      if @slab.update_attributes(params[:slab])
        format.html { redirect_to @slab, :notice => 'Slab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @slab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /slabs/1
  # DELETE /slabs/1.json
  def destroy
    @slab = Slab.find(params[:id])
    @slab.destroy

    respond_to do |format|
      format.html { redirect_to slabs_url }
      format.json { head :no_content }
    end
  end
end
