# == Schema Information
#
# Table name: pools
#
#  id         :integer          not null, primary key
#  name       :string
#  staff      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pool < ActiveRecord::Base
  has_many :interpreter_pools, dependent: :destroy
  has_many :interpreters, through: :interpreter_pools


  def pool_languages
    @languages = []
    self.interpreters.each do |i|
      @languages << i.language[:name]
    end
    return @languages.flatten.uniq
  end


end
