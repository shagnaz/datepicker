class TrppdhdrsController < ApplicationController
  before_action :set_trppdhdr, only: [:show, :edit, :update, :destroy]

  # GET /trppdhdrs
  # GET /trppdhdrs.json
  def index
    @trppdhdrs = Trppdhdr.all
  end

  # GET /trppdhdrs/1
  # GET /trppdhdrs/1.json
  def show
  end

  # GET /trppdhdrs/new
  def new
    @trppdhdr = Trppdhdr.new
  end

  # GET /trppdhdrs/1/edit
  def edit
  end

  # POST /trppdhdrs
  # POST /trppdhdrs.json
  def create
    @trppdhdr = Trppdhdr.new(trppdhdr_params)
    @trppdhdr.is_active = true

    # cara ini untuk memasukan value is active di tabel nested nya yaitu tr_dtl_channel
    # cara ini berhasil ketika coba di update, tetapi ketika create baru tidak
    params[:trppdhdr][:tr_dtl_channels_attributes].values.each do |channel|
      channel[:is_active] = true
    end if params[:trppdhdr][:tr_dtl_channels_attributes]
  
    respond_to do |format|
      if @trppdhdr.save
        format.html { redirect_to @trppdhdr, notice: 'Trppdhdr was successfully created.' }
        format.json { render :show, status: :created, location: @trppdhdr }
      else
        format.html { render :new }
        format.json { render json: @trppdhdr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trppdhdrs/1
  # PATCH/PUT /trppdhdrs/1.json
  def update
    # ini cara yang aku pakai untuk memasukan value true ke child nya, kalau edit terus aku add nested baru dia berhasil true
    # tapi pas create new dari awal is_active masih nil
    params[:trppdhdr][:tr_dtl_channels_attributes].values.each do |channel|
      channel[:is_active] = true
    end if params[:trppdhdr][:tr_dtl_channels_attributes]
    # 
    respond_to do |format|
      if @trppdhdr.update(trppdhdr_params)
        format.html { redirect_to @trppdhdr, notice: 'Trppdhdr was successfully updated.' }
        format.json { render :show, status: :ok, location: @trppdhdr }
      else
        format.html { render :edit }
        format.json { render json: @trppdhdr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trppdhdrs/1
  # DELETE /trppdhdrs/1.json
  def destroy
    @trppdhdr.destroy
    respond_to do |format|
      format.html { redirect_to trppdhdrs_url, notice: 'Trppdhdr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def in_active_nested
    params[:trppdhdr][:tr_dtl_channels_attributes].values.each do |channel|
      channel[:is_active] = false
    end if params[:trppdhdr][:tr_dtl_channels_attributes][:destroy]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trppdhdr
      @trppdhdr = Trppdhdr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trppdhdr_params
      params.require(:trppdhdr).permit(:tgl_berlaku, :is_active,tr_dtl_channels_attributes: TrDtlChannel.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
