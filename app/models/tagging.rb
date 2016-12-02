class Tagging < ApplicationRecord
  # Direct associations

  belongs_to :category,
             :class_name => "List",
             :foreign_key => "list_id"

  belongs_to :note

  # Indirect associations

  # Validations

end
