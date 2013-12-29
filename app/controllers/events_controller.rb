class EventsController < ApplicationController


  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(params[:event])

    respond_to do |format|
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.js { render :create }
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
