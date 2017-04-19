class JobsController < ApplicationController

  def index
    all_the_jobs = Job.all

    render json: all_the_jobs
  end


  def show
    job = Job.find(params[:id])

    render json: job
  end

end
