class ApplicationController < ActionController::Base
  if defined? PlayAuth
    helper PlayAuth::SessionsHelper
  end
end
