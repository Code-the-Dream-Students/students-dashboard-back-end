class StuffController < ApplicationController
    def index
      @stuff = Stuff.all
    end
  end
  