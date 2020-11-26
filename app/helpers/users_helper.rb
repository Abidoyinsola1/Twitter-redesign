module UsersHelper
  def suggest
    @user = User.all - [current_user]
    render 'follow-suggest'
  end

  def cover_image(user)
    if user.image.attached?
image_tag(user.image)
    end
  end
  
end
