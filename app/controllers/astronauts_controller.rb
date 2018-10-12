class AstronautsController < ApplicationController
  def index
    @Astronauts = Astronaut.all
  end
end
