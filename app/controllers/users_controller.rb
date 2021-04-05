class UsersController < ApplicationController

    def new 
        @user = User.new 
    end

    def create 
        @user = User.create(users_params)
        if @user.errors.any? 
            @error_messages = @user.errors.full_messages.join(', ')
            render :new 
        else 

            redirect_to user_path(@user)
        end
        
    end

    def show 
        @user = User.find(params[:id])
    end

    private 
    def users_params(*args)
        params.require(:user).permit(:name, :username, :password)
    end
end
