class Talk < ActiveRecord::Base
  attr_accessible :href, :speaker, :title

  has_many :watches
  has_many :watchers, through: :watches
end
