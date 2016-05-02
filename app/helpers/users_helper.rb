module UsersHelper
  def relationship_button(user)
    if current_user.following? user
      unfollow_button(user)
    else
      follow_button(user)
    end
  end

  private

  def follow_button(user)
    button_to 'Follow', user_follow_path(user)
  end

  def unfollow_button(user)
    button_to 'Unfollow', user_follow_path(user), method: :delete
  end
end
