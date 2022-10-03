class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_categories, only: %i[show edit update destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(categories_params)

    if @category.save
      redirect_to categories_path, notice: "Category was created"
    else
      render :new
    end
  end

  def show
    @category
  end

  def edit
    @category
  end

  def update
    @category

    if @category.update(categories_params)
      redirect_to category_path, notice: "Category was updated"
    else
      render :edit
    end
  end

  private

  def categories_params
    params.require(:category).permit(:title)
  end

  def set_categories
    @category = Category.find(params[:id])
  end
end