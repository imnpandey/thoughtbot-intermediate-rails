module Followable
  def following? user
    # followed_user_ids from has many relation
    followed_user_ids.include? user.id
  end

  def follow user
    followed_users << user
  end

  def unfollow user
    followed_users.delete(user)
  end
end
