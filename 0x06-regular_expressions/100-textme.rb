#!/usr/bin/env ruby
# matches a repetition
sender=ARGV[0].scan(/from:[A-Z]?[a-z]*[+]?[0-9]*/).join
reciever=ARGV[0].scan(/to:[A-Z]?[a-z]*[+]?[0-9]*/).join
flags=ARGV[0].scan(/flags:[-]?[0-9]:[-]?[0-9]:[-]?[0-9]:[-]?[0-9]:[-]?[0-9]/).join
sender=sender.scan(/:[A-Z]?[a-z]*|[+]?[0-9]*/).join
sender=sender.scan(/[^:]/).join
reciever=reciever.scan(/:[A-Z]?[a-z]*[+]?[0-9]*/).join
reciever=reciever.scan(/[^:]/).join
flags=flags.scan(/[-]?[0-9]:[-]?[0-9]:[-]?[0-9]:[-]?[0-9]:[-]?[0-9]/).join
puts "%s,%s,%s" % [sender,reciever,flags]
