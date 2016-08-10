class TagsController < ApplicationController

  def create
    @dream = Dream.find(params[:dream_id])
    @tag = @dream.tags.create(tag_params)

    if @tag.save
      flash[:notice] = "You've successfully tagged your dream."
      redirect_to dreams_path
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end
