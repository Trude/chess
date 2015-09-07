class Registration < ActiveRecord::Base

  validates_presence_of :name, :company, :phone, :email, message: "må fylles ut"
  validates_acceptance_of :goingToJz, accept: true, message: "Du kan ikke delta i konkurransen hvis du ikke skal på JavaZone"

end
