# == Schema Information
#
# Table name: jobs
#
#  id             :integer          not null, primary key
#  request_time   :datetime
#  request_date   :datetime
#  status         :text
#  request_wait   :integer
#  provider_total :integer
#  provider_list  :text
#  language       :string
#  duration       :integer
#  patient        :string
#  latitude       :decimal(, )
#  longitude      :decimal(, )
#  requester_id   :integer
#  interpreter_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  name           :string
#

class Job < ActiveRecord::Base
  belongs_to :requester
  belongs_to :interpreter

  serialize :status
  serialize :provider_list
end
