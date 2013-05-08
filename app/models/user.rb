class User < ActiveRecord::Base
  has_and_belongs_to_many :squads, :uniq => true
  has_one :squad
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :battlelog, :first_name, :gamer_tag, :gender, :last_name, :preffered_class, :squad_id
end
