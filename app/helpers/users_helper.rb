module UsersHelper
  def suggest
    @user = User.all - [current_user]
    render 'follow-suggest'
  end
end
