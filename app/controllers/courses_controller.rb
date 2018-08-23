class CoursesController < ApplicationController
    # list method
    def index
        @courses = Course.all
    end
    # show method - specific admin
    def show
        @course = Course.find(params[:id])
    end
    
    def new
        @course = Course.new
    end
    
    def create
        @course = Course.create(course_params)
        if @Course.save 
            redirect_to :action => 'list'
        end
     end
    
    def edit
        @course = Course.find(params[:id])
    end
    
    def update
        @course = Course.find(params[:id])
         
        if @Course.update_attributes(course_params)
           redirect_to :action => 'show', :id => @course
        else
           render :action => 'edit'
        end
        
     end
     
    
    def delete
        Course.find(params[:id]).destroy
        redirect_to root_path
    end

    private
    def course_params
        params.require(:course).permit(:firstname, :lastname, :email, :avatar)
     end
end
