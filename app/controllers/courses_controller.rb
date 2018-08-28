class CoursesController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_course, only: [:destroy]
    # list method
    def index
        @courses = Course.all
    end
    # show method - specific admin
    def show
        @course = Course.find(params[:id])
        @cohorts = Course.find(params[:id]).cohorts
    end
    
    def new
        @course = Course.new
    end
    
    def create
        @course = Course.create(course_params)
        if @course.save 
            redirect_to courses_path
        end
     end
    
    def edit
        @course = Course.find(params[:id])
    end
    
    def update
        @course = Course.find(params[:id])
         
        if @course.update_attributes(course_params)
           redirect_to :action => 'show', :id => @course
        else
           render :action => 'edit'
        end
        
     end
   
    
    def destroy
        @course = Course.find(params[:id])
        @course.destroy

        respond_to do |format|
        format.html {redirect_to courses_path}
        format.js
    end
end

    private
    def course_params
        params.require(:course).permit(:coursename, :totalhours)
     end

     def set_course
        @course = Course.find(params[:id])
    end
end
