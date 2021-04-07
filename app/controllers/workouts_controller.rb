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

    end
end 
