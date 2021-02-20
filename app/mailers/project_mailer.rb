class ProjectMailer < ApplicationMailer
  def new_volunteer
    @project = params[:project]
    @user = params[:user]

    mail(to: "<#{@project.user.email}>", bcc: MAILER_BCC, subject: "You got a new request for #{@project.name}!")
  end

  def new_project
    @project = params[:project]
    mail(to: "<#{@project.user.email}>", bcc: MAILER_BCC, subject: "You created a new resource: #{@project.name}!")
  end

  def cancel_volunteer
    @user = params[:user]
    @project = params[:project]
    mail(to: "<#{@user.email}>", subject: "[ResiTown Sacramento: noreply] Your Request For Aid Has Been Canceled")
  end

  # def volunteer_outreach
  #   @user = params[:user]
  #   mail(to: "<#{@user.email}>", reply_to: HWC_EMAIL, subject: "[ResiTown Sacramento - action required] Thank you and an update")
  # end
end
