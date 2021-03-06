class PagesController < ApplicationController
  
  before_filter :set_page_to_render, :set_sub_title

  caches_page :index, :about, :contact, :classes, :principles, :private_lessons
  
  def index
    @sub_title = "Cape Town"
  end

  def about
  end

  def contact
  end

  def classes
  end 
  
  def principles
  end
  
  def private_lessons
  end
  
  private

    def set_page_to_render
      @page_to_render = action_name
    end

    def set_sub_title
      @sub_title = action_name.to_s.capitalize  
    end


end