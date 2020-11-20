class UsersController < ApplicationController
  def following
    followed = User.find(params[:id])
    friendship = Friendship.new(followed_id: followed.id, follower_id: current_user.id)
    if friendship.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def followers
    friendship = current_user.active_friendships.find_by(followed_id: params[:id])
    if friendship.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
