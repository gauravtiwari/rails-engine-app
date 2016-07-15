require_dependency "cms/application_controller"

module Cms
  class DashboardController < ApplicationController
    before_action :authenticate_administrator!
  end
end
