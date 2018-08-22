class StudentsController < ApplicationController
    # list all students
    def list
        @students = Student.all
    end
    # show method - specific student by id
    def show
        @student = Student.find(params[:id])
    end
    # new student
    def new
        @student = Student.new
    end
    # save new student
    def create
        @student = Students.create(student_params)
        if @student.save 
            redirect_to :action => 'list'
        end
     end
    # edit a student by id
    def edit
        @student = Student.find(params[:id])
    end
    # update a student
    def update
        @student = Student.find(params[:id])
         
        if @admin.update_attributes(student_param)
           redirect_to :action => 'show', :id => @student
        else
           render :action => 'edit'
        end
        
     end
    # destroy a student
    def delete
        Student.find(params[:id]).destroy
        redirect_to root_path
    end
    #pivate methods
    private
    def student_param
        params.require(:student).permit(:firstname, :lastname, :age, :email, :avatar)
     end
end
