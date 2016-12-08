class User < ApplicationRecord
  # Direct associations

  has_many   :notes,
             :dependent => :destroy

  has_many   :tasks,
             :dependent => :destroy

  # Indirect associations

  # Validations

   validates :username,  :presence => true, :uniqueness => true

   validates :email,  :presence => true, :uniqueness => true
   validates :password,  :presence => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
