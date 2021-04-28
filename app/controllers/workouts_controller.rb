
class WorkoutsController < ApplicationController
    # @ models = Model.all
    def index 
        if logged_in?
            @workouts = current_user.workouts 
        else 
            flash[:error] = "You must be logged in to do that"
            redirect_to root_path
        end 
    end

    def new

        # @eqt = Exercises.
        @workout = current_user.workouts.new 
        @workout.exercises.build()
        @workout.exercises.build()
        @workout.exercises.build()
        # @workout.exercises.build 
        # form would contain hidden field 
        # to save the value of the workout 
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
        @workout = Workout.find(params[:id])
    
    end

    def edit 
        @workout = Workout.find(params[:id])
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

    def workout_params 
        # binding.pry 
        params.require(:workout).permit(:name, :date_of_workout, :category_id, exercises_attributes: [:name, :quantity, :difficulty_level, :quantity_type, :sets])

    end

end 
