class HostgroupsController < ApplicationController
  # GET /hostgroups
  # GET /hostgroups.json
  def index
    @hostgroups = Hostgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostgroups }
    end
  end

  # GET /hostgroups/1
  # GET /hostgroups/1.json
  def show
    @hostgroup = Hostgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hostgroup }
    end
  end

  # GET /hostgroups/new
  # GET /hostgroups/new.json
  def new
    @hostgroup = Hostgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hostgroup }
    end
  end

  # GET /hostgroups/1/edit
  def edit
    @hostgroup = Hostgroup.find(params[:id])
  end

  # POST /hostgroups
  # POST /hostgroups.json
  def create
    @hostgroup = Hostgroup.new(params[:hostgroup])

    respond_to do |format|
      if @hostgroup.save
        format.html { redirect_to @hostgroup, notice: 'Hostgroup was successfully created.' }
        format.json { render json: @hostgroup, status: :created, location: @hostgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @hostgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostgroups/1
  # PUT /hostgroups/1.json
  def update
    @hostgroup = Hostgroup.find(params[:id])

    respond_to do |format|
      if @hostgroup.update_attributes(params[:hostgroup])
        format.html { redirect_to @hostgroup, notice: 'Hostgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hostgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostgroups/1
  # DELETE /hostgroups/1.json
  def destroy
    @hostgroup = Hostgroup.find(params[:id])
    @hostgroup.destroy

    respond_to do |format|
      format.html { redirect_to hostgroups_url }
      format.json { head :no_content }
    end
  end
end
