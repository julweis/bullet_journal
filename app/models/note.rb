class Note < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_many   :lists,
             :through => :taggings,
             :source => :category

  # Validations

end
