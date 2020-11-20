module TweetsHelper
  def follow_or_unfollow_button(user)
    return unless user_signed_in?

    out = ''
    out << if current_user.following?(user)
             link_to('unfollow', followers_user_path(id: user.id), class: '')
           else
             link_to('follow', following_user_path(id: user.id), class: '')
           end

    out.html_safe
  end

  def navigations
    output = ''
    if user_signed_in?
      output << link_to('Edit Profile', edit_user_registration_path, class: 'button is-info')
      output << link_to('Log Out', destroy_user_session_path, class: 'button is-info', method: :delete)
    else
      output << link_to('Sign In', new_user_session_path, class: 'button is-info')
      output << link_to('Sign Up', new_user_registration_path, class: 'button is-info')

    end
    output.html_safe
  end
end
