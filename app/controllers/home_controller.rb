class HomeController < ApplicationController

  def index
    @title = 'Mail Merge'
  end

  def create
    @title = 'Mail Merge'
    @recipients = params[:recipients]
    @subject = params[:subject]
    @body = params[:emailbody]
    @processed_body = Home.process_body(@body)
    @contact_array = Home.split_by_line(@recipients)
    @contact_matrix = Home.split_by_comma(@contact_array)
    @replaced_body = Home.process(@processed_body, @contact_matrix)
    @replaced_subject = Home.process(@subject, @contact_matrix)
    render 'index'
  end

end
