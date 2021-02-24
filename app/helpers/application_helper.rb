module ApplicationHelper
  def check_user
    output = ''
    if user_signed_in?
      output << "<small>You are signed in as</small><small> #{current_user.name} </small>"
      output << (link_to 'New Post', new_post_path, class: 'btn btn-success')
      output << (link_to 'Log out', destroy_user_session_path, method: :delete,
                                                               class: 'btn btn-success')
    else
      output << (link_to 'Sign in', user_session_path, class: 'btn btn-success')
      output << (link_to 'Sign Up', new_user_registration_path, class: 'btn btn-success')
    end
    output.html_safe
  end
end
