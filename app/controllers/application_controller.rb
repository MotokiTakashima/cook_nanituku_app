class ApplicationController < ActionController::Base
  #全ページでログイン必須化
  before_action :authenticate_user!
end
