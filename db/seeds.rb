# if Interpreter.count > 0
#   Interpreter.destroy_all
# end
# if Requester.count > 0
#   Requester.destroy_all
# end
# if Job.count > 0
#   Job.destroy_all
# end
# if Pool.count > 0
#   Pool.destroy_all
# end
# if Escalation.count > 0
#   Escalation.destroy_all
# end
#
@languages = ["Spanish", "French", "German", "Russian", "Italian", "ASL"]
# 50.times do |x|
#   Interpreter.create(
#                     first_name: Faker::Name.first_name,
#                     last_name: Faker::Name.last_name,
#                     username: Faker::Internet.user_name,
#                     status: "Active",
#                     credentials: {type: ["A-1 Cert", "B-Plus French"], selected: true},
#                     specilities: "Calming Presence",
#                     licenses: {state:['Florida State', 'Georgia State']},
#                     gender: 'Male',
#                     vaccines: {name: ['Polio', 'Measeals']},
#                     email: Faker::Internet.safe_email,
#                     address: Faker::Address.street_address,
#                     city: Faker::Address.city,
#                     state: Faker::Address.state_abbr,
#                     zip: Faker::Address.zip_code,
#                     language: {name: [@languages.sample, @languages.sample]},
#                     profile: "media/user_pic/3.jpg"
#                     )
# end
#
#
# @department = ['X-Ray', 'Oncology', 'Nurse Station A', 'Nurse Station B', 'Nurse Station C', 'Billing']
# @department_code = ['1234', '5435', '6434', '9573', '6583', '7529', '7234']
# @meeting_place = ['Nurse Station A', 'Room A', 'Room 123', 'Bay 324', 'Front Desk', 'X-Ray', 'Parking A']
# @permission = ['Schedule', 'Admin', 'Observe']
# @status = ['Active', 'Non-Active']
#
# 25.times do |x|
#   Requester.create(
#                     first_name: Faker::Name.first_name,
#                     last_name: Faker::Name.last_name,
#                     username: Faker::Internet.user_name,
#                     department: @department.sample,
#                     department_code: @department_code.sample,
#                     meeting_place: @meeting_place.sample,
#                     permission: @permission.sample,
#                     status: @status.sample,
#                     )
# end
#
# @time = [00, 05, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55]
# @type = [1, 2, 3, 4, 5, 6, 7]
# @tname = ['Active', 'Committed', 'Pending', 'Open', 'Completed', 'Denied', 'Canceled', 'In Process']
# @tcolor = ['blue', 'yellow', 'brown', 'red', 'green', 'grey', 'orange']
# @type_object = {type: 1, name: 'Active', color: 'blue'}
# @language = ['Spanish', 'German', 'French', 'ASL', 'Urdu', 'Italian']
# @requesters = Requester.all
# @interpreters = Interpreter.all
# @rand_lat = rand(75..90)
# @rand_long = rand(55..75)
# @duration = [15, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 195, 210, 225,
#             240, 255, 270, 285, 300, 315, 330, 345, 360, 375, 390, 405, 420, 435,
#             450, 465, 480]
# @job_type = ['Scheduled', 'Now']
#
# 25.times do |x|
# @rand_num = rand(0..6)
# @rand_lat = rand(10..99)
# @rand_long = rand(10..99)
#   Job.create(
#             request_date: "2015-#{rand(10..12)}-#{rand(1..30)}",
#             request_time: "#{rand(0..23)}:#{@time.sample}:00",
#             status: {type: @type[@rand_num], name: @tname[@rand_num], color: @tcolor[@rand_num]},
#             language: @language.sample,
#             latitude: "27.96#{@rand_lat}".to_f,
#             longitude: "-82.47#{@rand_long}".to_f,
#             duration: @duration.sample,
#             patient: Faker::Name.name,
#             name: @job_type.sample,
#             requester: @requesters.sample,
#             interpreter: @interpreters.sample
#             )
# end
#
# @j = Job.all
# @j.each do |j|
#   if j.status[:name] == "Pending" || j.status[:name] == "Open" || j.status[:name] == "Denied"
#     j.interpreter = nil
#     j.save
#   end
# end
#
# 10.times do |x|
#   Pool.create(
#               name: Faker::Lorem.word,
#               staff: true,
#   )
# end
# @pools = Pool.all
# 10.times do |x|
#   Escalation.create(
#               name: Faker::Lorem.word,
#               response_time: 10,
#               default: false,
#   )
# end
#
# @escalation = Escalation.all
# @escalation.each do |e|
#   pool = @pools.sample
#   e.escalation_pools.create(
#                             name: pool.name,
#                             response_time: 10,
#                             p_id: 1,
#                             pool: pool
#                             )
# end

if CalendarJob.count > 0
  CalendarJob.destroy_all
end
if Provider.count > 0
  CalendaProviderrJob.destroy_all
end
if Session.count > 0
  Session.destroy_all
end

10.times do |x|
  CalendarJob.create(
                    name: Faker::Name.first_name,
                    attrib_list: [{language: @languages.sample}, {location: "tampa"}, {place: "haneke"}, {speciality: 'none'}],
                    )
end

30.times do |x|
  Provider.create(
                    name: Faker::Name.first_name,
                    calendar_job: CalendarJob.all.sample,
                    )
end
@dur = [60, 120, 180, 240, 300, 360, 420]
@state_name = ['booked', 'empty', 'completed', 'active', 'pending']
40.times do |x|
  Session.create(
                    start_time: DateTime.new(2016,2,rand(17..21),rand(1..23),rand(0..50),0),
                    duration: @dur.sample,
                    state: {type: rand(1..5), name: @state_name.sample},
                    calendar_job: CalendarJob.all.sample
                    )
end
