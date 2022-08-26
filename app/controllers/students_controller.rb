class StudentsController < ApplicationController
    def index
        # byebug
        # Model
        students = Student.all
        # View
        render json: students
    end

    def grades
        # byebug
        # Model
        students = Student.order(grade: :desc)
        # View
        render json: students
    end
end
