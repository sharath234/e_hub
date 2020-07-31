class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find params[:id]
    respond_to do |format|
      format.json {render :json => @student}
  end

  end

  def get_details 
    @student = Student.find params[:id]
    @subjects = Subject.pluck(:name)
     
    end
    
end

