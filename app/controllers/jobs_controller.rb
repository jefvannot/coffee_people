class JobsController < ApplicationController
before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @job = Job.all
  end

  def show
  end

  def new           # GET /jobs/new
    @job = Job.new
  end

  def create        # POST /jobs
    @job = Job.new(params[:job])
    @job.save
    # Will raise ActiveModel::ForbiddenAttributesError

    # no need for app/views/restaurants/create.html.erb
    redirect_to job_path(@job)
  end

  def edit          # GET /jobs/:id/edit
  end

  def update        # PATCH /jobs/:id
    @job.update(params[:job])
    # Will raise ActiveModel::ForbiddenAttributesError

    # no need for app/views/jobs/create.html.erb
    redirect_to job_path(@job)
  end

  def destroy       # DELETE /jobs/:id
    @job.destroy

    # no need for app/views/jobs/destroy.html.erb
    redirect_to jobs_path

    # <%= link_to "Delete", job_path(job),
    #   method: :delete,
    #   data: { confirm: "Are you sure?" } %>
  end

  private

  def job_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:job).permit(:firm_name, :firm_type, :firm_email, :proposed_job, :alternativ_job, :job_city, :job_start_date, :comment)
  end

  def set_job
    @job = Job.find(params[:id])
  end

end
