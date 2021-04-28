class ExercisesController < ApplicationController

    def new
        # theres a workout id as a param 
        # if it exists than you assign 
        # that id to a workout instance variable 
        @workout = Workout.find_by(id: params[:workout_id])
        @exercise = @workout.exercises.build()
        

    end

    def create
        @workout = Workout.find_by(id: exercise_params[:workout_id])
        @workout.exercises.create(exercise_params) 
        if @workout.errors.any? 
            flash[:errors] = "There were some errors"
        else 
            flash[:notice] = "Workout was saved"
            redirect_to workouts_path 

        end

    end

    def edit 
        # no need for workout id 
        @exercise = Exercise.find_by(id: params[:id])
        # gp nacl to this exercises workout show 
    end

    def update 
        @exercise = Exercise.new 



    end

    def destroy 

    end

    private 

    def test
        puts "test"
    end

    def exercise_params 
        params.require(:exercise).permit(:name, :quantity, :difficulty_level, :quantity_type, :sets, :workout_id)
    end
end
