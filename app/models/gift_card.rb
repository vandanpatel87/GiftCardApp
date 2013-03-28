class GiftCard < ActiveRecord::Base
  attr_accessible :description, :money, :receiver, :sender

  validates :sender, presence: true
  validates :receiver, presence: true
  validates :money, presence: true,:format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0}

end
