class StaticresponsesController < ApplicationController
  def show
    @current_datetime = formatted_time()
    @static_query = StaticQuery.find(params[:staticquery_id])
    @static_response = @static_query.static_response
    @static_response_references = @static_response.static_response_references
  end

  private

  def ordinal()
    now = Time.now
    day = now.day
    if (11..13).include?(day % 100)
      "#{day}th"
    else
      case day % 10
        when 1 then "#{day}st"
        when 2 then "#{day}nd"
        when 3 then "#{day}rd"
      else
        "#{day}th"
      end
    end
  end

  def formatted_time()
    now = Time.now
    return (now.strftime("%A, %B, #{ordinal()}, %Y at %I:%M%p"))
  end
end
