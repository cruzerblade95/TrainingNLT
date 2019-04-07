class PersonalDetail < ApplicationRecord

  has_one_attached :staff_image
  has_one :legal_spouse
end
