class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  validates :first_name, :last_name, :presence => true
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  # attr_accessible :title, :body
  has_many :avatars, :dependent => :destroy

  def has_avatar_set?
    has_avatar = avatars.find_by_active(true)

    if !has_avatar.nil?
      true
    else
      false
    end
  end

  def get_avatar
    avatar = avatars.find_by_active(true)
  end
end
