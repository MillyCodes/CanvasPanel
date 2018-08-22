class AdminsController < ApplicationController
    # list method
    def list
        @admins = Admin.all
    end
    # show method - specific admin
    def show
        @admin = Admin.find(params[:id])
    end
    
    def new
        @admin = Admin.new
    end
    
    def create
        @admin = Admin.create(_params])
        if @admin.save 
            redirect_to :action => 'list'
        end
     end
    
    def edit
        @admin = Admin.find(params[:id])
    end
    
    def update
        @admin = Admin.find(params[:id])
         
        if @admin.update_attributes(admin_param)
           redirect_to :action => 'show', :id => @admin
        else
           render :action => 'edit'
        end
        
     end
     
    
    def delete
        Admin.find(params[:id]).destroy
        redirect_to root_path
    end

    private
    def admin_param
        params.require(:admin).permit(:firstname, :lastname, :email, :avatar)
     end
end
         