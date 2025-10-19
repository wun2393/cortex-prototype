class StaticresponsesController < ApplicationController
  def show
    @static_query = StaticQuery.find(params[:staticquery_id])
    @static_response = @static_query.static_response
  end
end
