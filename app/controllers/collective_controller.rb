class CollectiveController < ApplicationController
  # i like the concept of this controller! collective unconscious! but i mainly like this because of the conceptual nature of this controller. union of programming logic and analogical logic-- my fave!

    # that being said it might make more sense to add this to the dreams controller, or to bring in the get_explore method here since it deals with questions on the overall meaning of dreams
  def get_collective
    @dreams = Dream.all
  end
end
