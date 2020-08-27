module PostsHelper
  def my_post?(post)
    user_signed_in? && post.user_id == current_user.id
  end
end
