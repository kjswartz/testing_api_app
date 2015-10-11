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

require 'test_helper'

class RequesterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
