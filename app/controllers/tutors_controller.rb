class TutorsController < ApplicationController
    before_filter :authorize, :except => [:index, :show]
    
  def index
    @tutors = Tutor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutors }
    end
  end

  def show
    @tutor = Tutor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutor }
    end
  end


  def new
    @tutor = Tutor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutor }
    end
  end


  def edit
    @tutor = Tutor.find(params[:id])
  end


  def create
    @tutor = Tutor.new(params[:tutor])

    respond_to do |format|
      if @tutor.save
        format.html { redirect_to @tutor, notice: 'Tutor was successfully created.' }
        format.json { render json: @tutor, status: :created, location: @tutor }
      else
        format.html { render action: "new" }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @tutor = Tutor.find(params[:id])

    respond_to do |format|
      if @tutor.update_attributes(params[:tutor])
        format.html { redirect_to @tutor, notice: 'Tutor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @tutor = Tutor.find(params[:id])
    @tutor.destroy

    respond_to do |format|
      format.html { redirect_to tutors_url }
      format.json { head :no_content }
    end
  end
end

