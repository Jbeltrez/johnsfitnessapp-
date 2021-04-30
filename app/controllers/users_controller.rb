class UsersController < ApplicationController

    def new 
        @user = User.new 
    end
    
    

    def create 
        @user = User.new(users_params)
        if @user.save
            session[:user_idd] = @user.id
            redirect_to user_path(@user)
        else 
            flash[:errors] = @user.errors.full_messages.join(', ')
            render :new 
        end
    end

    def show 
        @user = User.find(params[:id])
    end

    private 

    def auth
        request.env['omniauth.auth']
      end

    def users_params(*args)
        params.require(:user).permit(:name, :username, :password)
    end
    
end
