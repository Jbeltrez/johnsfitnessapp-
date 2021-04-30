class SessionsController < ApplicationController

    # new action requires a form for login, and post
    # sessions  
    def new 

    end

    def createe
      puts "auth: #{auth.inspect}"
      @user = User.find_or_create_by!(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.username = auth['info']['name']
        u.password = SecureRandom.uuid
        u.email = auth['info']['email']
        # u.image = auth['info']['image']
      end
  
      session[:user_id] = @user.id
  
      redirect_to user_path(@user.id)
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          flash[:message] = "Incorrect login info, please try again"
          redirect_to "/login"
        end
      end

    # def create 
    #     # @user = User.find_by(username: params[:username])
    #     # # if user is found ? what do we do?
    #     # # check their password
    #     # if @user && @user.authenticate(params[:password])
    #     #     session[:user_id] = @user.id 
    #     #     # redirect_to users show page? using user_path(@user)
    #     #     redirect_to user_path(@user)        
    #     # else 
    #     #     # if the user doesnt enter the right info 
    #     #     # we could redirect to the new form 
    #     #     # but what happens when we do that 
           
    #     #     # lets render so that we could be able to display errors 
    #     #     # such as incorrecct username or password 
    #     # end
    # end 

    def destroy
        session.clear
        redirect_to root_path
      end

      private

      def auth
        request.env['omniauth.auth']
      end

end
