class MychatsController < ApplicationController
  before_action :set_mychat, only: [:show, :edit, :update, :destroy]

  # GET /mychats
  # GET /mychats.json
  def index
    @mychats = Mychat.all
  end

  # GET /mychats/1
  # GET /mychats/1.json
  def show
  end

  # GET /mychats/new
  def new
    @mychat = Mychat.new
  end

  # GET /mychats/1/edit
  def edit
  end

  # POST /mychats
  # POST /mychats.json
  def create
    @mychat = Mychat.new(mychat_params)

    respond_to do |format|
      if @mychat.save
        format.html { redirect_to @mychat, notice: 'Mychat was successfully created.' }
        format.json { render :show, status: :created, location: @mychat }
      else
        format.html { render :new }
        format.json { render json: @mychat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mychats/1
  # PATCH/PUT /mychats/1.json
  def update
    respond_to do |format|
      if @mychat.update(mychat_params)
        format.html { redirect_to @mychat, notice: 'Mychat was successfully updated.' }
        format.json { render :show, status: :ok, location: @mychat }
      else
        format.html { render :edit }
        format.json { render json: @mychat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mychats/1
  # DELETE /mychats/1.json
  def destroy
    @mychat.destroy
    respond_to do |format|
      format.html { redirect_to mychats_url, notice: 'Mychat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mychat
      @mychat = Mychat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mychat_params
      params.require(:mychat).permit(:message, :username)
    end
end
