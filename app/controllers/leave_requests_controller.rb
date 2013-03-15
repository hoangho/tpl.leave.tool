class LeaveRequestsController < ApplicationController
  
  # GET /leave_requests
  # GET /leave_requests.json
  def index
    @leave_requests = LeaveRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leave_requests }
    end
  end

  # GET /leave_requests/1
  # GET /leave_requests/1.json
  def show
    @leave_request = LeaveRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leave_request }
    end
  end

  # GET /leave_requests/new
  # GET /leave_requests/new.json
  def new
    @leave_request = LeaveRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leave_request }
    end
  end

  # GET /leave_requests/1/edit
  def edit
    @leave_request = LeaveRequest.find(params[:id])
  end

  # POST /leave_requests
  # POST /leave_requests.json
  def create
    @leave_request = LeaveRequest.new(params[:leave_request])

    respond_to do |format|
      if @leave_request.save
        format.html { redirect_to @leave_request, notice: 'Leave request was successfully created.' }
        format.json { render json: @leave_request, status: :created, location: @leave_request }
      else
        format.html { render action: "new" }
        format.json { render json: @leave_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leave_requests/1
  # PUT /leave_requests/1.json
  def update
    @leave_request = LeaveRequest.find(params[:id])

    respond_to do |format|
      if @leave_request.update_attributes(params[:leave_request])
        format.html { redirect_to @leave_request, notice: 'Leave request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leave_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_requests/1
  # DELETE /leave_requests/1.json
  def destroy
    @leave_request = LeaveRequest.find(params[:id])
    @leave_request.destroy

    respond_to do |format|
      format.html { redirect_to leave_requests_url }
      format.json { head :no_content }
    end
  end
end
