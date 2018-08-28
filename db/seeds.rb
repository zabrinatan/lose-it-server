Mealplan.destroy_all

b1 = Mealplan.create(
  :day => "Sunday",
  :meal => "Breakfast"
)
  b2 = Mealplan.create(
    :day => "Monday",
    :meal => "Breakfast"
  )

  b3 = Mealplan.create(
    :day => "Tuesday",
    :meal => "Breakfast"
  )
  b4 = Mealplan.create(
    :day => "Wednesday",
    :meal => "Breakfast"
  )
  b5 = Mealplan.create(
    :day => "Thursday",
    :meal => "Breakfast"
  )
  b6 = Mealplan.create(
    :day => "Friday",
    :meal => "Breakfast"
  )
  b7 = Mealplan.create(
    :day => "Saturday",
    :meal => "Breakfast"
  )
  l1 = Mealplan.create(
    :day => "Sunday",
    :meal => "Lunch"
  )
    l2 = Mealplan.create(
      :day => "Monday",
      :meal => "Lunch"
    )

    l3 = Mealplan.create(
      :day => "Tuesday",
      :meal => "Lunch"
    )
    l4 = Mealplan.create(
      :day => "Wednesday",
      :meal => "Lunch"
    )
    l5 = Mealplan.create(
      :day => "Thursday",
      :meal => "Lunch"
    )
    l6 = Mealplan.create(
      :day => "Friday",
      :meal => "Lunch"
    )
    l7 = Mealplan.create(
      :day => "Saturday",
      :meal => "Lunch"
    )

    d1 = Mealplan.create(
      :day => "Sunday",
      :meal => "Dinner"
    )
      d2 = Mealplan.create(
        :day => "Monday",
        :meal => "Dinner"
      )

      d3 = Mealplan.create(
        :day => "Tuesday",
        :meal => "Dinner"
      )
      d4 = Mealplan.create(
        :day => "Wednesday",
        :meal => "Dinner"
      )
      d5 = Mealplan.create(
        :day => "Thursday",
        :meal => "Dinner"
      )
      d6 = Mealplan.create(
        :day => "Friday",
        :meal => "Dinner"
      )
      d7 = Mealplan.create(
        :day => "Saturday",
        :meal => "Dinner"
      )

  User.destroy_all

  u1 = User.create(
    :email => 'zabrinatan@hotmail.com',
    :password => 'chicken'
  )
