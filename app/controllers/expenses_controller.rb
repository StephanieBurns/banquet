class ExpensesController < ApplicationController

  def new
  end

  def index
    @name = "Panino"
    @token = "ef71ab8674975902651fae8d2d21224e"
    push_data = Typhoeus::Request.new(
        "https://guarded-caverns-1459.herokuapp.com/api/v1/expenses.json", 
        method: :get, 
        headers: { name: @name,token: @token }, 
      )
    #byebug
    @derp = run_request(push_data)
    #byebug
    puts "derp off"
    
  end

  def create
    @name = "Panino"
    @token = "ef71ab8674975902651fae8d2d21224e"
    date = params[:date]
    amount = params[:amount]
    push_data = Typhoeus::Request.new(
        "https://guarded-caverns-1459.herokuapp.com/api/v1/expenses", 
        method: :post, 
        headers: { name: @name,token: @token },
        params: {date: date, amount: amount}
      )
    run_request(push_data)
   redirect_to expenses_path
  end

  def run_request request
  request.run
  response = request.response
  @data = response.response_body
end
end
