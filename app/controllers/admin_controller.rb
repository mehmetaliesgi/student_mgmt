class AdminController < ApplicationController
  layout 'admin'
  include Pagy::Backend
  before_action :authenticate_admin_user!
end