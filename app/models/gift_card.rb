class GiftCard < ActiveRecord::Base
  attr_accessible :description, :money, :receiver, :sender
end
