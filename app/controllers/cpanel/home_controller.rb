class Cpanel::HomeController < Cpanel::ApplicationController

  def index
    @recent_topics = Topic.recent.all(:limit => 5)
  end

end