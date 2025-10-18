class CortexqueriesController < ApplicationController
  def index
  end

  def search
    @staticqueries = StaticQuery.all
    @staticquery_1 = @staticqueries[0]
    @staticresponse_1 = @staticquery_1.static_response
    redirect_to staticquery_staticresponse_path(@staticquery_1, @staticresponse_1)
  end

  def show
  end
end
