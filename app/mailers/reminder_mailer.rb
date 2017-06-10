class ReminderMailer < ApplicationMailer
	default from: 'markucinet@gmail.com'
 
  def reminder_email(appoinment)
    @appoinment = appoinment
    attachments.inline['birthday.gif'] = File.read('app/assets/images/birthday.gif')
    #@attachments.inline['birthday.gif'] = File.read( Rails.root.join('app/assets/images/birthday.gif') )
 
    mail(to: appoinment.email, subject: 'Appoinment Status')
  end
end
