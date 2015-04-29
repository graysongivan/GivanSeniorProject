class StoreToVisitsController < ApplicationController
  before_action :set_store_to_visit, only: [:show, :edit, :update, :destroy]

  # GET /store_to_visits
  # GET /store_to_visits.json
  def index
    @store_to_visits = StoreToVisit.all
  end

  # GET /store_to_visits/1
  # GET /store_to_visits/1.json
  def show
  end

  # GET /store_to_visits/new
  def new
    @store_to_visit = StoreToVisit.new
  end

  # GET /store_to_visits/1/edit
  def edit
  end

  # POST /store_to_visits
  # POST /store_to_visits.json
  def create
    @store_to_visit = StoreToVisit.new(store_to_visit_params)

    respond_to do |format|
      if @store_to_visit.save
        format.html { redirect_to root_path, notice: 'Store to visit was successfully created.' }
        format.json { render :show, status: :created, location: @store_to_visit }
      else
        format.html { render :new }
        format.json { render json: @store_to_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_to_visits/1
  # PATCH/PUT /store_to_visits/1.json
  def update
    respond_to do |format|
      if @store_to_visit.update(store_to_visit_params)
        format.html { redirect_to root_path, notice: 'Store to visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_to_visit }
      else
        format.html { render :edit }
        format.json { render json: @store_to_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_to_visits/1
  # DELETE /store_to_visits/1.json
  def destroy
    @store_to_visit.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Store to visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_to_visit
      @store_to_visit = StoreToVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_to_visit_params
      params.require(:store_to_visit).permit(:store_id, :user_id)
    end
end
