class ClassificationsController < ApplicationController
  def show
    @classification = Classification.find(params[:id])
    @dreams = @classification.dreams
  end
end
