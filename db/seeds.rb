50.times do |x|
  Interpreter.create(
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    username: Faker::Internet.user_name,
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


@department = ['X-Ray', 'Oncology', 'Nurse Station A', 'Nurse Station B', 'Nurse Station C', 'Billing']
@department_code = ['1234', '5435', '6434', '9573', '6583', '7529', '7234']
@meeting_place = ['Nurse Station A', 'Room A', 'Room 123', 'Bay 324', 'Front Desk', 'X-Ray', 'Parking A']
@permission = ['Schedule', 'Admin', 'Observe']
@status = ['Active', 'Pending', 'Non-Active', 'Flagged']

25.times do |x|
  Requester.create(
                    first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    username: Faker::Internet.user_name,
                    department: @department.sample,
                    department_code: @department_code.sample,
                    meeting_place: @meeting_place.sample,
                    permission: @permission.sample,
                    status: @status.sample
                    )
end
