# == Schema Information
#
# Table name: sessions
#
#  id              :integer          not null, primary key
#  start_time      :datetime
#  duration        :integer
#  state           :text
#  calendar_job_id :integer
#  provider_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Session < ActiveRecord::Base
  belongs_to :calendar_job
  belongs_to :provider
  serialize :state




end
