require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'


# put your own credentials here
account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
auth_token = '2008ea097713e401a16c54029058da82'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token



#!/usr/bin/ruby -w

time1 = Time.new

puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect


  
until Time.now > Time.new(2014, 07, 15, 13, 52, 0)
  puts "It's not time!"
  sleep (5)
end
  
  @client.account.messages.create(
  :from => '+18152642023',
  :to => '+19144628240',
  :body => 'Wake up!'
)



 
