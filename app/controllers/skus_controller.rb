class SkusController < ApplicationController
  
  before_action :set_sku, only: [:show, :edit, :update, :destroy]




  # GET /skus
  # GET /skus.json
  def index
    @skus = Sku.all
    authorize! :read, @skus
  end

  # GET /skus/1
  # GET /skus/1.json
  def show
    authorize! :read, @skus
  end

  # GET /skus/new
  def new
    authorize! :read, @skus
    @sku = Sku.new
  end

  # GET /skus/1/edit
  def edit
    authorize! :read, @skus
  end

  # POST /skus
  # POST /skus.json
  def create
    authorize! :read, @skus
    @sku_ids = Array.new
    @skus = Sku.all
    @skus.each do |sku|
      @sku_ids << sku.id
      end
    @sku = Sku.new(sku_params)

    respond_to do |format|
      if @sku.save
        format.html { redirect_to @sku, notice: 'Sku was successfully created.' }
        format.json { render :show, status: :created, location: @sku }
      else
        format.html { render :new }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skus/1
  # PATCH/PUT /skus/1.json
  def update
    authorize! :read, @skus
    respond_to do |format|
      if @sku.update(sku_params)
        format.html { redirect_to @sku, notice: 'Sku was successfully updated.' }
        format.json { render :show, status: :ok, location: @sku }
      else
        format.html { render :edit }
        format.json { render json: @sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skus/1
  # DELETE /skus/1.json
  def destroy
    @sku.destroy
    respond_to do |format|
      format.html { redirect_to skus_url, notice: 'Sku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sku
      @sku = Sku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sku_params
      params.require(:sku).permit(:order_id, :name, :price, :cogs)
    end

    
end
