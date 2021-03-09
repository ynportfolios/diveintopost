class DeleteAgendaMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delete_agenda_mailer.sendmail_delete_agenda.subject
  #
  def sendmail_delete_agenda(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.pluck(:email), subject: "アジェンダの削除通知"
  end
end
