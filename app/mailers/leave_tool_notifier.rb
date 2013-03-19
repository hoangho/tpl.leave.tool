require 'Uri'
class LeaveToolNotifier < ActionMailer::Base
  default from: "hthoang88@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.leave_tool_notifier.request_created.subject
  #
  def request_created(leave_request)
    mail :to => leave_request.user_approve.email,
    # mail :to => "hthoang88@gmail.com",
      :subject => request_subject(leave_request, 1),
      :body => create_html_content(leave_request, 1),
      :content_type => "text/html"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.leave_tool_notifier.request_processed.subject
  #
  def request_processed
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def request_subject(new_request, type)
    if type == 1
       "[TPL Leave Tool] New leaving request from #{new_request.user_request.full_name}"
    else
      "[TPL Leave Tool] New leaving request from #{new_request.user_request.full_name}"
    end
   
  end

  def create_content(new_request, type)
    path = full_path(edit_leave_request_path(new_request))
    if type == 1
       content = "Dear <b>#{new_request.user_approve.full_name} </b><br /> <br/>
        There is a new leaving request summited on #{new_request.created_at} by <b>#{new_request.user_request.full_name}</b> : <br />
               *Leave from #{new_request.leave_from} to #{new_request.leave_to} <br/>
               *Comment: #{new_request.comment} <br/> <br/>
        You can view the request at <a href='#{path}'>here </a>. <br/><br/>
        Human Resource is already informed.<br/><br/>
        Regards, <br/>
        Human Resource Department"
    else
      content = "Dear <b>#{new_request.user_approve.full_name} </b><br /> <br/>
        There is a new leaving request summited on #{new_request.created_at} by <b>#{new_request.user_request.full_name}</b> : <br />
               *Leave from #{new_request.leave_from} to #{new_request.leave_to} <br/>
               *Comment: #{new_request.comment} <br/> <br/>
        You can view the request at <a href='#{leave_request_path(new_request)}'>here </a>. <br/><br/>
        Human Resource is already informed.<br/><br/>
        Regards, <br/>
        Human Resource Department"
    end
  end

  def create_html_content(new_request,type)
    html_content = "<!DOCTYPE html><html> 
      <head>
        <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
      </head>
      <body>" + create_content(new_request, type) + 
      "</body></html>"
  end

  def full_path(url)
      ("http://localhost:3000" + url).to_s
    end
end
