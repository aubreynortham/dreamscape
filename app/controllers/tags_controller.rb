class TagsController < ApplicationController
  def new
    @dream = Dream.find(params[:dream_id])
    @tag = @dream.tags.new
  end

  def create
    @dream = Dream.find(params[:dream_id])
    @classification = Classification.find_or_create_by(name: params[:classification_name])

    existing_tag = Tag.find_by(dream: @dream, classification: @classification)
    unless existing_tag
      @dream.tags.create(classification: @classification)
    end
    redirect_to dream_path(@dream)
  end

end
