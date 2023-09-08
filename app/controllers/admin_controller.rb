class AdminController < ApplicationController
  layout 'admin'
  include Pagy::Backend
end