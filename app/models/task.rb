class Task < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations
  validates :task,  :presence => true
    validates :date,  :presence => true
end
