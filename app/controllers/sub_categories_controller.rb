class SubCategoriesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.create(sub_category_params)
    @sub_category.save
    redirect_to @category
  end

  def update
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.find(params[:id])
    @sub_category.update(sub_category_params)
    redirect_to @category
  end

  def destroy
    @category = Category.find(params[:category_id])
    @sub_category = @category.sub_categories.find(params[:id])
    @sub_category.destroy
    redirect_to @category
  end

  private
  def sub_category_params
    params.require(:sub_category).permit(:name)
  end
end
