class MsChannelsController < ApplicationController
  before_action :set_ms_channel, only: [:show, :edit, :update, :destroy]

  # GET /ms_channels
  # GET /ms_channels.json
  def index
    @ms_channels = MsChannel.all
  end

  # GET /ms_channels/1
  # GET /ms_channels/1.json
  def show
  end

  # GET /ms_channels/new
  def new
    @ms_channel = MsChannel.new
  end

  # GET /ms_channels/1/edit
  def edit
  end

  # POST /ms_channels
  # POST /ms_channels.json
  def create
    @ms_channel = MsChannel.new(ms_channel_params)

    respond_to do |format|
      if @ms_channel.save
        format.html { redirect_to @ms_channel, notice: 'Ms channel was successfully created.' }
        format.json { render :show, status: :created, location: @ms_channel }
      else
        format.html { render :new }
        format.json { render json: @ms_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ms_channels/1
  # PATCH/PUT /ms_channels/1.json
  def update
    respond_to do |format|
      if @ms_channel.update(ms_channel_params)
        format.html { redirect_to @ms_channel, notice: 'Ms channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @ms_channel }
      else
        format.html { render :edit }
        format.json { render json: @ms_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ms_channels/1
  # DELETE /ms_channels/1.json
  def destroy
    @ms_channel.destroy
    respond_to do |format|
      format.html { redirect_to ms_channels_url, notice: 'Ms channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ms_channel
      @ms_channel = MsChannel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ms_channel_params
      params.require(:ms_channel).permit(:name, :is_active)
    end
end
