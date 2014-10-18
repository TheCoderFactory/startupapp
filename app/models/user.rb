class User < ActiveRecord::Base
  rolify
	has_one :profile
  has_many :businesses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :build_profile

  def build_profile
  	self.profile = Profile.new
  end

  
end
