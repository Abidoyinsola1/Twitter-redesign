module UsersHelper
  def suggest
    @user = User.all - [current_user]
    render 'follow-suggest'
  end

  def cover_image(user)
    image_tag(user.image) if user.image.attached?
  end
end
