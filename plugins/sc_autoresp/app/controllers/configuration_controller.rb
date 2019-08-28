class ConfigurationController < ApplicationController
  before_action :set_config

  def index
    @statuses = IssueStatus.all.map { |is| [is.name, is.id] }
  end
  def save
    @config.subject= params[:subject]
    @config.body= params[:body]
    @config.active= params[:active]
    @config.days_ago=params[:days].to_i
    @config.i_status=params[:statuses].to_i
    @config.s_status=IssueStatus.find(@config.i_status).name

    if @config.save
      redirect_to sc_autoresp_path, notice: 'Konfiguracja zapisana.'
    else
      render :index, alert: 'Bład'
    end
  end

  def logs
  end

  private
  def set_config
    @config = ScConfig.first.present? ?  ScConfig.first : ScConfig.new
  end
end
