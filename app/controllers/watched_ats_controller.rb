class WatchedAtsController < ApplicationController
  jsonapi resource: WatchedAtResource

  def index
    scope = WatchedAt.all
    render_jsonapi(scope)
  end
end
