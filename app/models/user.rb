class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets, dependent: :destroy
  has_many :active_friendships, class_name: "Friendship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_friendships, class_name: "Friendship", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_friendships, source: :followed
  has_many :follower, through: :passive_friendships, source: :follower

  def follow(other)
    active_friendships.build(followed_id: other.id)
  end
  
  def unfollow(other)
  revoke = active_friendships.find_by(followed_id: other.id)
  revoke.destroy if revoke  
  end

  def following?(other)
    following.include?(other)
  end


end
