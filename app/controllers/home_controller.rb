class HomeController < ApplicationController

  def index
    @title = 'Mail Merge'
    @recipients = params[:recipients]
    @subject = params[:subject]
    @body = params[:emailbody]
  end

end
