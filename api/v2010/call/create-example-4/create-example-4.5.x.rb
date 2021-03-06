# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
# DANGER! This is insecure. See http://twil.io/secure
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
                       method: 'GET',
                       status_callback: 'https://www.myapp.com/events',
                       status_callback_event: ['initiated', 'answered'],
                       status_callback_method: 'POST',
                       url: 'http://demo.twilio.com/docs/voice.xml',
                       to: '+14155551212',
                       from: '+18668675310'
                     )

puts call.sid
