class AutomaticsController < ApplicationController
  # before_action :set_automatic, only: [:index,:show, :edit, :update, :destroy]

  def index
    @automatics = Automatic.all
  end

  def new
  end

  def show
    @automatic=Automatic.find(params[:id])
  end

  def create
     @automatic = Automatic.new(automatic_params)
     @automatic.user_id=current_user.id
     if @automatic.save
       redirect_to automatics_path, notice: "New Registration!"
     else
       render :new
     end
   end

  def edit
  end

  def update
   @automatic = Automatic.new(automatic_params)
     if @automatic.update(automatic_params)
        redirect_to automatics_path, notice: " Registration updated!"
     else
      render :edit
     end
  end

  # def confirm
  #   @automatic= Automatic.new(automatic_params)
  #   @automatic.user_id=current_user.id
  # end

  def destroy
    @automatic.destroy
    redirect_to automatics_path, notice:" Registration Deleted!"
  end

  private
  # def set_automatic
  #   @automatic = Automatic.new(automatic_params)
  # end
  def automatic_params
    params.require(:automatic).permit(:first_name,:last_name,:mobile_number,:course_period,:start_date,:payment_type, :user_id, :id)
  end
end
