class StudentsController < ApplicationController
    # list method
    def index
        @students = Student.all
    end
    # show method - specific student
    def show
        @student = Student.find(params[:id])
    end
    
    def new
        @student = Student.new
    end
    
    def create
        @student = Student.create(student_params)
        if @Student.save 
            redirect_to :action => 'list'
        end
     end
    
    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        puts 'hello'
        @student = Student.find(params[:id])
         
        if @student.update(student_params)
           redirect_to :action => 'show', :id => @student
        else
           render :action => 'edit'
        end
        
     end
    
    def delete
        Student.find(params[:id]).destroy
        redirect_to root_path
    end

    private
    def student_params
        params.require(:student).permit(:firstname, :lastname, :email, :age, :avatar)
     end
end
