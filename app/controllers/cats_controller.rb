class CatsController < ApplicationController

  def new
    render :new
  end

  def create
    @cat = Cat.new(params[:cat])
    # fail

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render text: "could not save"
    end
  end

  def show
    @cat = Cat.find_by_id(params[:id])

    if @cat.nil?
      render text: "no such cat"
    else
      render :show
    end
  end

  def index
    @cats = Cat.all

    render :index
  end

  def edit
    @cat = Cat.find_by_id(params[:id])

    render :edit
  end

  def update
    # fail
    @cat = Cat.find_by_id(params[:id])
    @cat.update_attributes(params[:cat])

    redirect_to cat_url(@cat)
  end

  def destroy

  end
end
