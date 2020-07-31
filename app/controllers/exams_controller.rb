class ExamsController < ApplicationController
    def index
        @exams = Exam.all
    end
        
    def show
        @exam = Exam.find params[:id]
        @score = Score.where(:exam_id=>params[:id])
        @students = Student.all
        @subjects = Subject.all
    end
end
