class CvsController < ApplicationController
before_action :set_cv, only: [:show, :edit, :update, :destroy]

  def index
    @cvs = Cv.all
  end

  def show
  end

  def new           # GET /cvs/new
    @cv = Cv.new
  end

  def create        # POST /cvs
    @cv = Cv.new(cv_params)
    if @cv.save
      redirect_to cvs_path
    else
      render :new
    end
  end

  def edit          # GET /cvs/:id/edit
  end

  def update        # PATCH /cvs/:id
    @cv.update(cv_params)
    # Will raise ActiveModel::ForbiddenAttributesError

    # no need for app/views/cvs/create.html.erb
    redirect_to cvs_path
  end

  def destroy       # DELETE /cvs/:id
    @cv.destroy

    # no need for app/views/cvs/destroy.html.erb
    redirect_to cvs_path

    # <%= link_to "Delete", cv_path(cv),
    #   method: :delete,
    #   data: { confirm: "Are you sure?" } %>
  end

  private

  def cv_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:cv).permit(:job, :first_name, :last_name, :email, :city, :experience, :start_date, :comment)
  end

  def set_cv
    @cv = Cv.find(cv_params[:id])
  end

end
