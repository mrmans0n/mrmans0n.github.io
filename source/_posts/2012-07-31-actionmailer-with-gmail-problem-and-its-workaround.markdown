---
layout: post
title: "ActionMailer with GMail problem and its workaround"
date: 2012-07-31 22:00
comments: true
categories: [ruby, actionmailer, rails]
---

I had a little problem today with one of my managed sites, one that was using 
[ActionMailer](http://api.rubyonrails.org/classes/ActionMailer/Base.html) for sending mails in a 
Contact Us form using GMail’s 
SMTP.

But reading server logs wasn’t very enlightening.

$ tail log/production.log 
Completed 500 Internal Server Error in 533ms
Net::SMTPAuthenticationError (535-5.7.1 Please log in with your web browser and then try again. Learn more at
):
app/controllers/contact_controller.rb:11:in `create'

And that was all. That line of code was a simple…

NotificationsMailer.new_message(@message).deliver

…so I investigated a lot of workarounds, double-checked my configurations and everything seemed perfect.

But then it came to me. I logged to the account that was being used to send all the mails, and this was on the inbox.

>User,

Someone recently tried to use an application to sign in to your Google Account, our.sender.email@gmail.com. We prevented the sign-in attempt in case this was a hijacker trying to access your account. Please review the details of the sign-in attempt:

Sunday, July 29, 2012 6:55:17 PM 
GMT 


IP Address: 123.456.789.101 


Location: Paris, France

If you do not recognize this sign-in attempt, someone else might be trying to access your account. You should sign in to your account and reset your password immediately. Find out how at http://support.google.com/accounts?p=reset_pw

If this was you, and you want to give this application access to your account, complete the troubleshooting steps listed at http://support.google.com/mail?p=client_login

Sincerely,


The Google Accounts Team


I investigated a bit and realized that my account wasn’t using 2-step verification. 
**So I configured the account with 2-step verification and created a specific password for my web app**
, changed it in my configuration and everything worked again flawlessly.

PD: If you are wondering what’s my configuration in config/application.rb, here it goes, in case it helps you.