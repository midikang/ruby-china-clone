class Cpanel::HomeController < Cpanel::ApplicationController

  def index
    @recent_topics = Topic.order(updated_at: :desc).limit(5)
  end

end