class CategoriesController < ApplicationController
   before_action :set_category, only: [:show, :update, :destroy]
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category, include: :recommendations
  end

  def create
    @category = Category.create(name: params[:name])
    render json: @category, include: :recommendations
  end

  def update
    @category.update(category_params)
    render json: @category
  end

  def destroy
    @category.destroy
    render json: @category
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
