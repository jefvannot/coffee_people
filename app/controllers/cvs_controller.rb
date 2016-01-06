class CvsController < ApplicationController
before_action :set_cv, only: [:show, :edit, :update, :destroy]

  def index
    @cv = Cv.all
  end

  def show
  end

  def new           # GET /cvs/new
    @cv = Restaurant.new
  end

  def create        # POST /cvs
    @cv = Cv.new(params[:cv])
    @cv.save
    # Will raise ActiveModel::ForbiddenAttributesError

    # no need for app/views/restaurants/create.html.erb
    redirect_to cv_path(@cv)
  end

  def edit          # GET /cvs/:id/edit
  end

  def update        # PATCH /cvs/:id
    @cv.update(params[:cv])
    # Will raise ActiveModel::ForbiddenAttributesError

    # no need for app/views/restaurants/create.html.erb
    redirect_to cv_path(@cv)
  end

  def destroy       # DELETE /cvs/:id
    @cv.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to cvs_path

    # <%= link_to "Delete", restaurant_path(restaurant),
    #   method: :delete,
    #   data: { confirm: "Are you sure?" } %>
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:cv).permit(:job, :first_name, :last_name, :email, :city, :experience, :start_date, :comment)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
