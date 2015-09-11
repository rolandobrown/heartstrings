module MessagesHelper
 def status_for(message)
   if message.published_at?
     if message.published_at > Time.zone.now
       "Schedule"
     else
       "Send Now"
     end
   else
     "Draft"
   end
 end
end
