class DreamsController < ApplicationController

  def index
    if current_user
      @dreams = current_user.dreams
    else
      render 'new'
    end
  end

  def edit
    @dream = Dream.find(params[:id])
    @classification = @dream.classifications
    @tags = @dream.tags
  end

  def new
    @dream = Dream.new
    @tags = @dream.tags
  end

  def create
    @dream = Dream.create(dream_params.merge(user: current_user))
    @classification = @dream.classifications
    @tags = @dream.tags

    if @dream.save
      flash[:notice] = "New dream entry has been created."
      redirect_to dreams_path
    else
      flash[:alert] = "Your dream entry needs a title with 25 characters or less."
      render 'new'
    end
  end

  def update
    @dream = Dream.find(params[:id])
    @classification = @dream.classifications
    @dream.update(dream_params.merge(user:current_user))
    redirect_to dreams_path
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
