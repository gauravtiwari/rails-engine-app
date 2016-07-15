module Cms
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :cleanup_zombie_session, unless: :session_cleared?
    helper_method :current_administrator, :administrator_signed_in?

    def current_administrator
      @current_administrator ||= Cms::Administrator.find_by(
        id: session[:administrator_id]
      )
    end

    def authenticate_administrator!
      redirect_to new_session_path unless current_administrator
    end

    def administrator_signed_in?
      current_administrator
    end

    def sign_in(administrator)
      session[:administrator_id] = administrator.id
    end

    def sign_out
      session[:administrator_id] = nil
    end

    private

    def session_cleared?
      administrator_signed_in? || session[:administrator_id].nil?
    end

    def cleanup_zombie_session
      return unless Cms::Administrator.find_by(
        id: session[:administrator_id]
      ).nil?
    end
  end
end
