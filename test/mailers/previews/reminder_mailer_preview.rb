# Preview all emails at http://localhost:3000/rails/mailers/reminder_mailer
class ReminderMailerPreview < ActionMailer::Preview
def reminder_email
    Reminder_mailer.reminder_email(Appointment.last)
  end
end
