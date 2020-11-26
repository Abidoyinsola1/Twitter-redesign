class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def following
    followed = User.find(params[:id])
    friendship = Friendship.new(followed_id: followed.id, follower_id: current_user.id)
    if friendship.save
      flash[:notice] = 'Friend followed successfully'
    else
      flash[:alert] = "Oops, couldn't send request"
    end

    redirect_to root_path
  end

  def followers
    friendship = current_user.active_friendships.find_by(followed_id: params[:id])
    if friendship.destroy
      flash[:notice] = 'Friend unfollowed successfully'
    else
      flash[:alert] = "Oops, couldn't unfollow"
    end
    redirect_to root_path
  end
end
