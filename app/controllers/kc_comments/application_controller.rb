module KcComments
  class ApplicationController < ActionController::Base
    layout "kc_comments/application"

    if defined? PlayAuth
      helper PlayAuth::SessionsHelper
    end
  end
end