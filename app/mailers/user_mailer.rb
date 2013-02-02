#coding=utf-8
class UserMailer < ActionMailer::Base
  default :from => %(关于我们 <send@adorona.com>)
  default :charset => "utf-8"
  default :content_type => "text/html"

  def confirm(mail)
    mail(:to => mail, :subject => "谢谢")
  end
end
