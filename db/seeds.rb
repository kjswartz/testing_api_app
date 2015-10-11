50.times do |x|
  Interpreter.create(
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    username: Faker::Internet.user_name,
                    staff: false,
                    status: "Active",
                    credentials: {type: ["A-1 Cert", "B-Plus French"]},
                    specilities: "Calming Presence",
                    licenses: {state:['Florida State', 'Georgia State']},
                    gender: 'Male',
                    vaccines: {name: ['Polio', 'Measeals']},
                    email: Faker::Internet.safe_email,
                    address: Faker::Address.street_address,
                    city: Faker::Address.city,
                    stat: Faker::Address.state_abbr,
                    zip: Faker::Address.zip_code,
                    language: {name: ["Spanish", "French", "German"]}
                    )
end
