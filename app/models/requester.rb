# == Schema Information
#
# Table name: requesters
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  username        :string
#  password        :string
#  department      :string
#  department_code :string
#  meeting_place   :text
#  permission      :string
#  status          :string
#  centralized     :boolean          default(TRUE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Requester < ActiveRecord::Base
  has_many :jobs
end
