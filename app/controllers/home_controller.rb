class HomeController < ApplicationController

  def index
    @title = 'Mail Merge'
  end

  def create
    @title = 'Mail Merge'
    @recipients = params[:recipients]
    @subject = params[:subject]
    @body = params[:emailbody]
    @processedBody = Home.processBody(@body)
    @contactArray = Home.splitByLine(@recipients)
    @contactMatrix = Home.splitByComma(@contactArray)
    @replacedBody = Home.process(@processedBody, @contactMatrix)
    @replacedSubject = Home.process(@subject, @contactMatrix)
    render 'index'
  end

end
