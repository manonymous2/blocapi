class CustomersController < ApplicationController

# require 'active_support/all'
# class RailsDateRange < Range
#   # step is similar to DateTime#advance argument
 

# # Convenience method
# def RailsDateRange(range)
#   RailsDateRange.new(range.begin, range.end, range.exclude_end?)
# end



  def index
    @customers = Customer.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def show
    @customer = Customer.find(params[:id])

    #  def every(step, &block)
    #  c_time = self.begin.to_datetime
    #  finish_time = self.end.to_datetime
    #  foo_compare = self.exclude_end? ? :< : :<=

    #  arr = []
    #  while c_time.send( foo_compare, finish_time) do 
    #  arr << c_time
    #  sc_time = c_time.advance(step)
    # end

    # return arr
    #  end
    #   end
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.create(params[:customer])

    respond_to do |format|
        format.html { redirect_to customers_path, notice: 'Customer was successfully created.' }
        format.js { render :create }
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
end
