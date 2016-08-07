class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.create(category_params)
    @category.save
    redirect_to @category
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to  @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
  
  def get_subcategories
    @data_category_id = params[:category_id]
    @data_subcategory_id = SubCategory.where(:category_id => @data_category_id).all
    render :json => @data_subcategory_id.map{|c| [c.id, c.name]}
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end

end
