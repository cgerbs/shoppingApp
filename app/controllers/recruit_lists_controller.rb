class RecruitListsController < ApplicationController
  before_action :set_recruit_list, only: [:show, :edit, :update, :destroy]

  # GET /recruit_lists
  # GET /recruit_lists.json
  def index
    @recruit_lists = RecruitList.all
  end

  # GET /recruit_lists/1
  # GET /recruit_lists/1.json
  def show
  end

  # GET /recruit_lists/new
  def new
    @recruit_list = RecruitList.new
  end

  # GET /recruit_lists/1/edit
  def edit
  end

  # POST /recruit_lists
  # POST /recruit_lists.json
  def create
    @recruit_list = RecruitList.new(recruit_list_params)

    respond_to do |format|
      if @recruit_list.save
        format.html { redirect_to @recruit_list, notice: 'Recruit list was successfully created.' }
        format.json { render :show, status: :created, location: @recruit_list }
      else
        format.html { render :new }
        format.json { render json: @recruit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recruit_lists/1
  # PATCH/PUT /recruit_lists/1.json
  def update
    respond_to do |format|
      if @recruit_list.update(recruit_list_params)
        format.html { redirect_to @recruit_list, notice: 'Recruit list was successfully updated.' }
        format.json { render :show, status: :ok, location: @recruit_list }
      else
        format.html { render :edit }
        format.json { render json: @recruit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruit_lists/1
  # DELETE /recruit_lists/1.json
  def destroy
    @recruit_list.destroy
    respond_to do |format|
      format.html { redirect_to recruit_lists_url, notice: 'Recruit list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruit_list
      @recruit_list = RecruitList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recruit_list_params
      params.fetch(:recruit_list, {})
    end
end
