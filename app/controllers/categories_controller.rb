# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.paginate(page: params[:page], per_page: 2)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = 'Category was created successfully'
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles.paginate(page: params[:page])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
