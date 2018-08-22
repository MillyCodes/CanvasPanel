class InstructorsController < ApplicationController
# list method
def index
    @instructors = Instructor.all
end
# show method - specific instructor
def show
    @instructor = Instructor.find(params[:id])
end

def new
    @instructor = Instructor.new
end

def create
    @instructor = Instructor.create(instructor_params)
    if @Instructor.save 
        redirect_to :action => 'list'
    end
 end

def edit
    @instructor = Instructor.find(params[:id])
end

def update
    @instructor = Instructor.find(params[:id])
     
    if @Instructor.update_attributes(instructor_params)
       redirect_to :action => 'show', :id => @instructor
    else
       render :action => 'edit'
    end
    
 end
 

def delete
    Instructor.find(params[:id]).destroy
    redirect_to root_path
end

private
def instructor_params
    params.require(:instructor).permit(:firstname, :lastname, :email, :avatar)
 end
end
