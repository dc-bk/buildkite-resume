require 'net/smtp'

smtp_host   = ENV.fetch("SMTP_HOST")
smtp_port   = ENV.fetch("SMTP_PORT")
smtp_user   = ENV.fetch("SMTP_USER")
smtp_secret = ENV.fetch("SMTP_SECRET")

reply_to_email = ENV.fetch("REPLY_TO_EMAIL")
reply_to_name  = ENV.fetch("REPLY_TO_NAME")
from_email     = ENV.fetch("FROM_EMAIL")
to_email       = ENV.fetch("TO_EMAIL")
subject        = ENV.fetch("SUBJECT")
body           = ENV.fetch("BODY")

message = <<~MSG
  From: #{from_email}
  Reply-To: "#{reply_to_name}" <#{reply_to_email}>
  To: #{to_email}
  Subject: #{subject}

  #{body}
MSG

Net::SMTP.start(smtp_host, smtp_port, user: smtp_user, secret: smtp_secret) do |smtp|
  smtp.send_message(message, from_email, to_email)
end
