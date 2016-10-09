class Users::DashboardController < ApplicationController
  def admin_dashboard
    @developers = User.developers
  end

  def projects_summery
    @projects = Project.all
  end
end
