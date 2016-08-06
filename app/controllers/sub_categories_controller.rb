class SubCategoriesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.new
  end

  def create
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.create(sub_category_params)
    @sub_category.save
    redirect_to @category
  end

  private
  def sub_category_params
    params.require(:sub_category).permit(:name)
  end
end
