module TweetsHelper
    def follow_or_unfollow_button(user)

        out = ''
        if current_user.following?(user)
          out << link_to('unfollow', followers_user_path(id: user.id), class: 'profile-link f-link')
        else
          out << link_to('follow', following_user_path(id: user.id), class: 'profile-link f-link')
        end
    
        out.html_safe
    end
    
end
