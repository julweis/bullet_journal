class List < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  has_many   :notes,
             :through => :taggings,
             :source => :note

  # Validations

end
