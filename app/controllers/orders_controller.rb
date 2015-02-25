class OrdersController < ApplicationController
  
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_sku, only: [:edit, :new, :create]
  def begin
  end
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
   
  end

  # GET /orders/new
  def new
    @order = Order.new
    sku = @order.skus.build
  end

  # GET /orders/1/edit
  def edit
  end

  def show
    @order = Order.find(params[:id])
    @revenue = @order.skus.sum(:price)
    @cogs = @order.skus.sum(:cogs)
    @profit = @revenue - @cogs 
  end

  # POST /orders
  # POST /orders.json
  def create
  #create logic that saves the loop data into a new record when we hit "create order"
    @order = Order.new(order_params)
  
    @user_id = current_user.id
    order_skus = params[:order][:order_skus][:sku_id]
    @order.user_id = @user_id
    
    respond_to do |format|
      if @order.save
        
        order_skus.each do |i|

          if i.last == "1"
            sku = Sku.find(i.first)
            OrderSku.create(user_id: @user_id, order_id: @order.id, sku_id: i.first, price: sku.price)
          end
        end

        format.html { redirect_to @order}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_path, notice: 'Order was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    params.require(:order).permit(:user_id, :party_date, :skus => [:id, :price])
  end

  def set_sku
    @skus = Sku.all
  end

end



