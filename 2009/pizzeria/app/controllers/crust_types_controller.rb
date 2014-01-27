class CrustTypesController < ApplicationController
  # GET /crust_types
  # GET /crust_types.xml
  def index
    @crust_types = CrustType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crust_types }
    end
  end

  # GET /crust_types/1
  # GET /crust_types/1.xml
  def show
    @crust_type = CrustType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crust_type }
    end
  end

  # GET /crust_types/new
  # GET /crust_types/new.xml
  def new
    @crust_type = CrustType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crust_type }
    end
  end

  # GET /crust_types/1/edit
  def edit
    @crust_type = CrustType.find(params[:id])
  end

  # POST /crust_types
  # POST /crust_types.xml
  def create
    @crust_type = CrustType.new(params[:crust_type])

    respond_to do |format|
      if @crust_type.save
        flash[:notice] = 'CrustType was successfully created.'
        format.html { redirect_to(@crust_type) }
        format.xml  { render :xml => @crust_type, :status => :created, :location => @crust_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crust_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crust_types/1
  # PUT /crust_types/1.xml
  def update
    @crust_type = CrustType.find(params[:id])

    respond_to do |format|
      if @crust_type.update_attributes(params[:crust_type])
        flash[:notice] = 'CrustType was successfully updated.'
        format.html { redirect_to(@crust_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crust_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crust_types/1
  # DELETE /crust_types/1.xml
  def destroy
    @crust_type = CrustType.find(params[:id])
    @crust_type.destroy

    respond_to do |format|
      format.html { redirect_to(crust_types_url) }
      format.xml  { head :ok }
    end
  end
end
