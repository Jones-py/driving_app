class ManualsController < ApplicationController
  # before_action :set_manual, only: [:index,:show, :edit, :update, :destroy]

  def index
    @manuals=Manual.all
  end

  def new
   @manual = Manual.new
  end

  def show
    @manual=Manual.find(params[:id])
  end

  def create
     @manual= Manual.new(manual_params)
     @manual.user_id=current_user.id
     if @manual.save
       redirect_to manuals_path, notice: "New Registration!"
     else
       render :new
     end
   end

  def edit
  end

  def update
   @manual = Manual.new(manual_params)
     if @manual.update(manual_params)
        redirect_to manuals_path, notice: " Registration updated!"
     else
      render :edit
     end
  end

  # def confirm
  #   @automatic= Automatic.new(automatic_params)
  #   @automatic.user_id=current_user.id
  # end

  def destroy
    @manual.destroy
    redirect_to manuals_path, notice:" Registration Deleted!"
  end

  private
  # def set_manual
  #   @manual=Manual.find(params[:id])
  #   # @manual= Manual.new(manual_params)
  
  def manual_params
    params.require(:manual).permit(:first_name,:last_name,:mobile_number,:course_period,:start_date, :address, :payment_type,:image, :image_cache, :user_id, :id)
  end
end
