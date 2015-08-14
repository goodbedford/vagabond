class TagsController < ApplicationController
  def create
  end

  def destroy
  end

  def show
    @tags =Tag.all
  end
end
