#!/usr/bin/env ruby

# Post to Twitter, see http://tinyurl.com/5t8dct

# Note that, if you append a colon followed by your password to your
# uid, curl won't query you for your password interactively.  For
# example:

# ruby twit.rb homer:snowball2 "Mmmm, less security."

def tweet (arguments)
  user, twit = arguments
  response = `curl -s -u #{user} -d status="#{twit}" http://twitter.com/statuses/update.xml | grep truncated`
  unless (response =~ /truncated>false</)
  	 puts "fail: Tweet failed.  Check your user name and password."
  end
end

if (ARGV.length != 2) || (ARGV[1] == "")
  puts %Q{usage: ruby twit.rb <username> "This will be tweeted to Twitter."}

elsif (ARGV[1].length > 140)
  overlimit = ARGV[1].length - 140
  offendingSubstring = ARGV[1][140, ARGV[1].length-1]
  puts %Q{FAIL: #{overlimit} characters over the 140-character limit:}
  puts %Q{\t"...#{offendingSubstring}"}

else
  tweet(ARGV)
end
