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

    def highest_grade
        # talk to Model
        student = Student.order(grade: :desc).first
        # create View
        render json: student
        # byebug
    end
end
