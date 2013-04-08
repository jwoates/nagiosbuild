class ApplicationController < ActionController::Base
  protect_from_forgery


  # Add authentication to the stage and prod environments
  before_filter :authenticate

  def authenticate
    if Rails.env == 'staging' && !is_facebook?(request.remote_ip)
      authenticate_or_request_with_http_basic do |username, password|
        username == "rh" && password == "rh123456!"
      end
    end
  end

  def is_facebook?(_ip)
    require "ipaddr"
    low  = IPAddr.new("66.220.144.0").to_i
    high = IPAddr.new("66.220.159.255").to_i
    ip   = IPAddr.new(_ip).to_i
    (low..high)===ip
  end

end
