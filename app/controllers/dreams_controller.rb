class DreamsController < ApplicationController

  def index
    if current_user
      @dreams = current_user.dreams
    else
      render 'new'
    end
  end

  def new
    @dream = Dream.new
  end

  def create
    #
    @dream = Dream.create(dream_params.merge(user: current_user))

    if @dream.save
      # YES flashes for better UX
      flash[:notice] = "New dream entry has been created."
      redirect_to dreams_path
    else
      # is this the only possible error? (empty field)
      flash[:alert] = "Your dream entry needs a title with 25 characters or less."
      render 'new'
    end
  end

  def edit
    @dream = Dream.find(params[:id])
  end

  def update
    @dream = Dream.find(params[:id])
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
