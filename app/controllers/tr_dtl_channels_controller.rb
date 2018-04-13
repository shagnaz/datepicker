class TrDtlChannelsController < ApplicationController
  before_action :set_tr_dtl_channel, only: [:show, :edit, :update, :destroy]

  # GET /tr_dtl_channels
  # GET /tr_dtl_channels.json
  def index
    @tr_dtl_channels = TrDtlChannel.all
  end

  # GET /tr_dtl_channels/1
  # GET /tr_dtl_channels/1.json
  def show
  end

  # GET /tr_dtl_channels/new
  def new
    @tr_dtl_channel = TrDtlChannel.new
    @tr_dtl_channels.is_active = true

  end

  # GET /tr_dtl_channels/1/edit
  def edit
  end

  # POST /tr_dtl_channels
  # POST /tr_dtl_channels.json
  def create
    @tr_dtl_channel = TrDtlChannel.new(tr_dtl_channel_params)
    @tr_dtl_channels.is_active = true
    @tr_dtl_channels.save

    respond_to do |format|
      if @tr_dtl_channel.save
        format.html { redirect_to @tr_dtl_channel, notice: 'Tr dtl channel was successfully created.' }
        format.json { render :show, status: :created, location: @tr_dtl_channel }
      else
        format.html { render :new }
        format.json { render json: @tr_dtl_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tr_dtl_channels/1
  # PATCH/PUT /tr_dtl_channels/1.json
  def update
    @tr_dtl_channels.is_active = true
    respond_to do |format|
      if @tr_dtl_channel.update(tr_dtl_channel_params)
        format.html { redirect_to @tr_dtl_channel, notice: 'Tr dtl channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @tr_dtl_channel }
      else
        format.html { render :edit }
        format.json { render json: @tr_dtl_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_dtl_channels/1
  # DELETE /tr_dtl_channels/1.json
  def destroy
    @tr_dtl_channel.destroy
    respond_to do |format|
      format.html { redirect_to tr_dtl_channels_url, notice: 'Tr dtl channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tr_dtl_channel
      @tr_dtl_channel = TrDtlChannel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tr_dtl_channel_params
      params.require(:tr_dtl_channel).permit(:ms_channel_id, :tr_ppd_hdr_id, :name_dropdown, :is_active)
    end
end
