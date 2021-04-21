class WorkoutsController < ApplicationController
    # @ models = Model.all
    def index 
        # @workouts = Workout.all 
        # STILL NEED TO FIGURE OUT WHAT 
        # ATTRIBUTES YOU WANT TO SEARCH FOR 
        # TAG/ GROUP?= WEIGHT LOSS/CARDIO/STRENGTH/ WARMUP
        # LEG, ARM, BACK, STRETCH... 
        # MAYBE A WORKOUT CAN HAVE MULTIPLE TAGS? 
        # TAGS BE ANOTHER JOIN TABLE? WHICH WOULD BE A USER SUBMITTABLE ATTRIBUTE 
        #however these shold only be 
        # available to current_user 
        @workouts = Workout.all 
    end

    def show 

    end

    def new

        @workout = current_user.workouts.new 
    end

    def create 

        @workout = Workout.new(workout_params)
        binding.pry 
        if @workout.save 
            redirect_to workout_path(@workout)
        else 
            flash[:error] = @workout.errors.full_messages.join(', ')
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
    private 

    def workout_params 
        params.require(:workout).permit(:group, :date_of_workout)
    end

end 
