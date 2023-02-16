class UsersController < ApplicationController
    #before_action :set_record, only: [:show,:edit,:update]

    def index 
        @users =User.all
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit({role_ids: []}))
          flash[:notice]="Profile is updated successfully" 
          redirect_to users_path
        else
          render 'edit'
        end
    end

end