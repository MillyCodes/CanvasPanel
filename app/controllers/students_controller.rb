class StudentsController < ApplicationController
    before_action :authenticate_admin!
    # list method
    def index
        @students = Student.all
        @students_desc = @students.order("id asc")
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
        if @student.save 
            redirect_to :action => 'show', :id => @student
        end
     end
    
    def edit
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.find(params[:id])
         
        if @student.update(student_params)
           redirect_to :action => 'show', :id => @student
        else
           render :action => 'edit'
        end
        
     end
    
    def destroy
        @student = Student.find(params[:id])
        @student.destroy

        respond_to do |format|
        format.html {redirect_to students_path}
        format.js
    end
end

    private
    def student_params
        params.require(:student).permit(:firstname, :lastname, :email, :age, :avatar, :cohort_id)
     end
end
