# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cardio = Category.create(name: "cardio")
warmup = Category.create(name: "warmup")

john = User.create(name: "john", username: "john@john.com", password: "johnsword")
mom = User.create(name: "mom", username: "mom@mom.com", password: "momsword")

sunday_stretch = mom.workouts.create(name: "sunday stretches", category_id: warmup.id)

monday_jog = john.workouts.create({
    name: "monday jog", category_id: cardio.id,
    exercises_attributes: {
      '0' => {
        name: 'Pre-run stretch',
        quantity: 1,
        difficulty_level: 1
      },
      '1' => {
        name: '2 mile jog',
        quantity: 1,
        difficulty_level: 5
      }
    }
  })