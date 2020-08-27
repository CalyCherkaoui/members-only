module ApplicationHelper
  def login_helper
    if user_signed_in?
      welcome = '<h3>Hi ' + current_user.name + '! welcome to MembersOnly app!'
      link = ('<small>' + link_to('Sign-out', destroy_user_session_url, method: :delete) + '</small><h3>')
      (welcome + link).html_safe
    else
      link1 = link_to('Sign-up', new_user_registration_path)
      link2 = link_to('Log-in', new_user_session_path)
      (link1 + '<br>'.html_safe + link2)
    end
  end

  def flash_helper
     if flash[:notice]
      "<p class=\"notice\"> #{notice} </p>".html_safe
     end

     if flash[:alert]
      "<p class=\"alert\"> #{alert} </p>".html_safe
     end
  end
end
