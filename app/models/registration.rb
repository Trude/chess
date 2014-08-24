class Registration < ActiveRecord::Base

  validates_presence_of :name, :company, :phone, :email, message: "må fylles ut"
  # , :mail_and_invoice_address,
  #     :first_name, :last_name, :mobile_phone_number, :email
  # validates :organization_number, presence: true, numericality: { only_integer: true },
  #           length: { is: 9 }, reduce: true
  # validates :mobile_phone_number, presence: true, numericality: { only_integer: true },
  #           length: { is: 8 }, reduce: true
  # # Regexp found at http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates_format_of
  # validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

end
