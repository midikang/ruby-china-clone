class Cpanel::ApplicationController < ActionController::Base
  layout "cpanel"
  before_action :require_user
  before_action :require_admin

  def require_admin
    if not 'admin@admin.com'.index(@current_user.email)
      render_404
    end
  end
end
