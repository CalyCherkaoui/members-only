module ApplicationHelper
  def my_post?(post)
    user_signed_in? && post.user_id == current_user.id
  end

  def login_helper
    if user_signed_in?
      welcome = "Hi"+ current_user.name + "welcome to MembersOnly app!"
      content_tag(:h3, welcome) do 
        content_tag(:small) do
          link_to "Sign-out", destroy_user_session_url, method: :delete
        end 
      end
    else
      link_to 'Sign-up', new_user_registration_path
      content_tag(:br)
      link_to 'Log-in', new_user_session_path
    end
  end
end
