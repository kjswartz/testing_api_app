# == Schema Information
#
# Table name: calendar_jobs
#
#  id          :integer          not null, primary key
#  name        :string
#  attrib_list :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CalendarJobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
