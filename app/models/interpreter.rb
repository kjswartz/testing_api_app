# == Schema Information
#
# Table name: interpreters
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  username    :string
#  language    :text
#  staff       :boolean
#  status      :string           default("Pending")
#  credentials :text
#  specilities :text
#  licenses    :text
#  gender      :string
#  vaccines    :text
#  email       :string
#  address     :string
#  city        :string
#  state       :string
#  zip         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Interpreter < ActiveRecord::Base
  has_many :jobs
  serialize :language
  serialize :licenses
  serialize :credentials
  serialize :specilities
  serialize :vaccines
end
