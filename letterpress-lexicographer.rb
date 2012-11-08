#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require 'imobiledevice'

puts " [*] Connecting to iDevice"
i = IMobileDevice::IDevice.new
puts " [*] Connected to iDevice. UDID:#{i.udid}"
puts " [*] Accessing Letterpress app"
i.access_app "com.atebits.ios.Letterpress"
puts " [*] Accessed Letterpress app"
while true do
  puts " [?] What word would you like to add? (/q to quit)"
  print "  -> "
  word = gets.chomp.downcase 
  if word == "/q"
    break
  elsif !(word =~ /^[a-z]*$/)
    puts " [!] Words can only contain letters"
    next
  elsif word.length <= 2
    puts " [!] You can do better than that! Pick a word longer than two letters."
    next
  end
  first_two = word[0..1]
  puts " [+] Reading word-list /Letterpress.app/o/#{first_two}.txt"
  f = i.open("/Letterpress.app/o/#{first_two}.txt",:r)
  data =  f.read
  if data.length == 0 #file doesn't exist yet.
    #we need the first line to be the first 2 letters
    data = first_two
  end
  f.close
  #TODO: This is a very inefficient way to insert into a sorted list!  
  l = data.split
  l << word
  l.sort!
  puts " [+] Inserting word #{word} into word-list /Letterpress.app/o/#{first_two}.txt"
  f = i.open("/Letterpress.app/o/#{first_two}.txt",:w)
  f.write(l.join("\n")+"\n")
  f.close
  puts " [+] Successfully added word #{word}.  You can play it now!"
end
