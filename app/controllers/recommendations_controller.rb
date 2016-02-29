class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:show]

  def show
    render json: @recommendation
  end

  def create
    @recommendation = Recommendation.new(title: params[:title], content: params[:content])
    @category = Category.find(params[:categoryId])
    @recommendation.categories << @category
    if @recommendation.save
      render json: @recommendation
    end
  end
  private

  def set_recommendation
    @recommendation = Recommendation.find(params[:id])
  end
end
