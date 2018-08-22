class CohortsController < ApplicationController
    # list method
    def index
        @cohorts = Cohort.all
    end
    # show method - specific cohort
    def show
        @cohort = Cohort.find(params[:id])
    end
    
    def new
        @cohort = Cohort.new
    end
    
    def create
        @cohort = Cohort.create(cohort_params)
        if @Cohort.save 
            redirect_to :action => 'list'
        end
     end
    
    def edit
        @cohort = Cohort.find(params[:id])
    end
    
    def update
        @cohort = Cohort.find(params[:id])
         
        if @Cohort.update_attributes(cohort_params)
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
        params.require(:cohort).permit(:name, :totalhours)
     end
end
