module ApplicationHelper
  def login_helper
    if user_signed_in?
      welcome = '<h3>Hi ' + current_user.name + '! welcome to MembersOnly app!'
      link = ('<small>' + link_to('Sign-out', destroy_user_session_url, method: :delete) + '</small><h3>')
      (welcome + link).html_safe
    else
      link_to 'Sign-up', new_user_registration_path
      content_tag(:br)
      link_to 'Log-in', new_user_session_path
    end
  end
end
