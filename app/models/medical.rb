class Medical < ApplicationRecord
  belongs_to :hospital
  belongs_to :medical_department
end
