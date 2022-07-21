class ToiletsController < ApplicationController
  before_action :set_toilet, only: %i[ show edit update destroy ]

  # GET /toilets or /toilets.json
  def index
    @toilets = Toilet.order("created_at DESC").limit(10)
    @users = User.all
    gon.toilets = @toilets
    # binding.pry
  end

  # GET /toilets/1 or /toilets/1.json
  def show
    @toilet = Toilet.find(params[:id])
    gon.latitude = @toilet.latitude
    gon.longtitude = @toilet.longtitude
    # @user = User.find(params[:id])
    @user = User.find(@toilet.user_id)
    # binding.pry
  end

  # GET /toilets/new
  def new
    @toilet = Toilet.new
    # binding.pry
  end

  # GET /toilets/1/edit
  def edit
    @toilet = Toilet.find(params[:id])
    @user = User.find(@toilet.user_id)
  end

  # POST /toilets or /toilets.json
  def create
    @toilet = Toilet.new(toilet_params)

    respond_to do |format|
      if @toilet.save
        format.html { redirect_to toilet_url(@toilet), notice: "Toilet was successfully created." }
        format.json { render :show, status: :created, location: @toilet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toilets/1 or /toilets/1.json
  def update
    respond_to do |format|
      if @toilet.update(toilet_params)
        format.html { redirect_to toilet_url(@toilet), notice: "Toilet was successfully updated." }
        format.json { render :show, status: :ok, location: @toilet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @toilet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toilets/1 or /toilets/1.json
  def destroy
    @toilet.destroy

    respond_to do |format|
      format.html { redirect_to toilets_url, notice: "Toilet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toilet
      @toilet = Toilet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toilet_params
      params.require(:toilet).permit(:toilet_name, :latitude, :longtitude, :multipurpose, :m_urinal, :m_room, :m_washlet, :w_room, :w_washlet, :open_time, :close_time, :remark, :user_id)
    end
end
