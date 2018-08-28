class InstructorsController < ApplicationController
    before_action :authenticate_admin!
# list method
def index
    @instructors = Instructor.all
end
# show method - specific instructor
def show
    @instructor = Instructor.find(params[:id])
    @showCohort = Cohort.where('instructor_id = ?', params[:id]) 
end


def new
    @instructor = Instructor.new
end

def create
    @instructor = Instructor.create(instructor_params)
    if @instructor.save 
        redirect_to instructors_path
    end
 end

def edit
    @instructor = Instructor.find(params[:id])
end

def update
    
    @instructor = Instructor.find(params[:id])
      puts 'before update'
    if @instructor.update(instructor_params)
        redirect_to instructors_path
        puts 'updated'
    else
       render :action => 'edit'
       puts 'not updated'
    end
 end
 

def delete
    Instructor.find(params[:id]).destroy
    redirect_to root_path
end

private
def instructor_params
    params.require(:instructor).permit(:firstname, :lastname, :email, :age, :salary, :education, :avatar)
 end
end
