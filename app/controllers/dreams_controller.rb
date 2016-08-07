class DreamsController < ApplicationController

  def index
    @dreams = Dream.all
  end

  def show
    @dream = Dream.find(params[:id])
    @tag = Tag.new
  end

  def edit
    @dream = Dream.find(params[:id])
  end

  def new
    @dream = Dream.new
  end

  def create
    @dream = Dream.create!(dream_params.merge(user: current_user))
    redirect_to dream_path(@dream)
  end

  def update
    @dream = Dream.find(params[:id])
    @dream.update(dream_params.merge(user:current_user))
    redirect_to dream_path(@dream)
  end

  def destroy
    @dream = Dream.find(params[:id])
    @dream.destroy
    redirect_to dreams_path
  end

  private
  def dream_params
    params.require(:dream).permit(:title, :entry)
  end

end
