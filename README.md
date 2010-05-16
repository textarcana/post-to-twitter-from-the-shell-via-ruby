# twit.rb

## Post to Twitter from the shell, using Ruby

This is possibly the *least* featureful Twitter client in existence.

## How to use

Call as follows:

        ruby twit.rb username "my tweet"

Or you can include your password in the command like so.  Note that
this is hugely insecure as your password will wind up in your history
file, not to mention being visible to shouldersurfers.

        ruby twit.rb username:password "my tweet"


## Features

There is exactly one feature: if a post is over the 140-character
limit, the script prints back the part of the tweet that would not
fit.

## History

This script was originally hosted at Snipplr.com.
[In fact it still is,](http://snipplr.com/view/6594/post-to-twitter-from-the-shell/)
although only the GitHub version will be maintained going forward (if
at all, heh).

Nate Smith wrote a
[Python version](http://snipplr.com/view/7870/post-to-twitter-from-shell--python-version/)
of this script.

Nicolas Connault also maintains a Ruby script called [twit.rb](http://github.com/nicolasconnault/rubyscripts/blob/1fb45a93036035173110e9e44eb69a77ee39691c/twit.rb)
but it's got *way* more features than this one ;-)
