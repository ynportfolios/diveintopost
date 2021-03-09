class ChangeOwnerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.change_owner_mailer.sendmail_change_owner.subject
  #
  def sendmail_change_owner(user)
    @user = user
    mail to: @user.email, subject: "オーナー権限の移行通知"
  end
end
