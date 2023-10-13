class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def category
    # @category_activities = Restaurant.all.where(category: @activity.category)

    @title = params[:category]
    @activities = Activity.where(category: params[:category])
  end
end
