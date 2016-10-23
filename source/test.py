# coding=utf-8

from orgmode_entry import OrgmodeEntry

entry = u'Dtwas machen:: Ausstellung am 23.09.2014 12:00 oder am Montag bzw. am 22.10 13:00 sollte man anschauen.'

org = OrgmodeEntry()
# Use an absolute path
org.inbox_file = '/Users/Alex/Documents/Planung/Planning/Inbox.org'
org.delimiter = ':: '
org.add_creation_date = True  # enable to add a creation date
org.replace_relative_dates = True  # enable to convert relative dates into orgmode dates

entry = 'TODO ' + entry

message = org.add_entry(entry).encode('utf-8')

print(message)
