class AdminsController < ApplicationController
    # list method
    def index
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
        @admin = Admin.create(admin_params)
        redirect_to 'show'
     end
    
    def edit
        @admin = Admin.find(params[:id])
    end
    
    def update
        @admin = Admin.find(params[:id])
         
        if @admin.update_attributes(admin_params)
           redirect_to :action => 'show', :id => @admin
        else
           render :action => 'edit'
        end  
     end
     
    
     def destroy
        @admin = Admin.find(params[:id])
        @admin.destroy

        respond_to do |format|
        format.html {redirect_to root_path}
        format.js
    end
end

    private
    def admin_params
        params.require(:admin).permit(:first_name, :last_name, :email, :avatar)
     end
end
         