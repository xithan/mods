if Wagn.config.respond_to?(:gmail_user) && Wagn.config.gmail_user
  require 'rufus-scheduler'

  scheduler = Rufus::Scheduler.new

  scheduler.every Wagn.config.gmail_interval do
    Card::Set::Self::GmailRemote.check_mails
  end
  
end
