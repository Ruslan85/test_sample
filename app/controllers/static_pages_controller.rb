class StaticPagesController < ApplicationController
  layout :layout_selection

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def paris
    @time = Time.now.utc + (60 * 60)
  end

  def tokyo
    @time = Time.now.utc + (60 * 60 * 9)
  end

  def new_york
    @time = Time.now.utc - (60 * 60 * 5)
  end

  private

  def layout_selection
    case action_name
    when "paris", "tokyo", "new_york"
      "city"
    else
      "application"
    end
  end
end
