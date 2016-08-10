class CollectiveController < ApplicationController
  def get_collective
    @dreams = Dream.all
  end
end
