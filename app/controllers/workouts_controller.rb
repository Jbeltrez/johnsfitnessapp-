
class WorkoutsController < ApplicationController
    # @ models = Model.all
    before_action :set_workout, only: [:show, :update, :destroy, :edit]
    before_action :require_login
    def index 
        # binding.pry 
        if params[:color]
            @color = params[:color]
        end
        if logged_in?
            @workouts = current_user.workouts.by_date_ascend
            if params[:category_id]
                @category = Category.find_by(id: params[:category_id])
                @workouts = @workouts.by_category(@category).by_date_ascend

            end
        else 
            flash[:error] = "You must be logged in to do that"
            redirect_to root_path
        end 
    end
    def custom 
        # so this page should 
        #use by_category scope method 
        @category = Category.first 
        @workouts = current_user.workouts 
        @workoutss = @workouts.by_category(@category)

    end

    def new
            @workout = current_user.workouts.new 
            3.times do 
                @workout.exercises.build()
            end 
    end

    def create 

        @workout = current_user.workouts.new(workout_params)
        
        if @workout.save 
            redirect_to workouts_path 
        else 
        #    binding.pry 
            flash[:notice] = @workout.errors.full_messages.join(', ')
            render :new
        end

        
            # add the attribute input field to form 
            # table 
            # method is gonna do something that 
            # Workout.where(workout_date < Date.today +7)) 
            # add this to a variable and iterate over for the 
            # days of the week 

            # then use active record order methods 
            # display the attr as the date 
            # then use input tag 
    end

    def show
    
    end

    def edit 
        
    end

    def update 
        # @workout = Workout.update(workout_params)
        
        @workout.user = current_user 
        @workout.update(workout_params)

        if @workout.save 
            redirect_to workout_path(@workout), info: "Workout was updated!"
        else  
            render :edit 
        end 
    end
   

    def destroy 
        Workout.find(params[:id]).destroy 
        redirect_to workouts_path, info: "Workout was deleted!"
    end

    private 

    def set_workout 
        @workout = Workout.find(params[:id])
    end

    def workout_params 
        # binding.pry 
        params.require(:workout).permit(:name, :date_of_workout, :category_id, exercises_attributes: [:name, :quantity, :difficulty_level, :quantity_type, :sets])

    end

end 
