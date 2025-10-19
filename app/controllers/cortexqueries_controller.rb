class CortexqueriesController < ApplicationController
  def index
  end

  def search
    req_query = params[:q].nil? ? nil : params[:q]
    if req_query.nil?
    else
      @static_query = StaticQuery.where(txt_query: req_query)[0]
      @static_response = @static_query.static_response
      redirect_to staticquery_staticresponse_path(@static_query, @static_response)
    end

    # @staticqueries = StaticQuery.all
    # @staticquery_1 = @staticqueries[0]
    # @staticresponse_1 = @staticquery_1.static_response
    # redirect_to staticquery_staticresponse_path(@staticquery_1, @staticresponse_1)
  end

  def show
  end
end
