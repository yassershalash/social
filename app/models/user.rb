class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true, format: {with: /\w+\@.*.edu.*/, message: "Please Enter your .edu Email"}
  has_and_belongs_to_many :events
end
