require "strongmind/exceptions"

class ApplicationController < ActionController::Base
  include StrongMindNav
  before_action :authenticate_user!
  before_action :fetch_common_nav

  # Implement the list of menu items for the application
  # def menu_items
  #   [
  #     { name: 'Home', icon: 'fa-solid fa-house', url: root_path }
  #   ]
  # end

  include StrongMindNav
  before_action :authenticate_user!
  before_action :fetch_common_nav

  # Implement the list of menu items for the application
  def menu_items
    [
      { name: 'Home', icon: 'fa-solid fa-house', url: articles_path }
    ]
  end

end
