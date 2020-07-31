class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find params[:id]
    respond_to do |format|
      format.json {render :json => @teacher}
    end
  end

end
