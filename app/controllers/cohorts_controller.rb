class CohortsController < ApplicationController
    before_action :authenticate_admin!
    # list method
    def index
        @cohorts = Cohort.all
    end
    # show method - specific cohort
    def show
        @cohort = Cohort.find(params[:id])
        @students = Cohort.find(params[:id]).students
    end 
    
    def new
        @cohort = Cohort.new
    end
    
    def create
        @cohort = Cohort.create(cohort_params)
        if @cohort.save 
            redirect_to cohorts_path
        end
     end
    
    def edit
        @cohort = Cohort.find(params[:id])
    end
    
    def update
        @cohort = Cohort.find(params[:id])
         
        if @cohort.update_attributes(cohort_params)
           redirect_to :action => 'show', :id => @cohort
        else
           render :action => 'edit'
        end
        
     end
     
    
    def delete
        Cohort.find(params[:id]).destroy
        redirect_to root_path
    end

    private
    def cohort_params
        params.require(:cohort).permit(:name, :startdate, :enddate, :instructor_id, :course_id)
     end
end
