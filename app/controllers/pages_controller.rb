class PagesController < ApplicationController
  
  class PagesController < ApplicationController

  before_filter :set_page_to_render, :set_sub_title

  caches_page :index
  
  def index
  end

  def about
  end

  def contact
  end

  def classes
    
  end 
  
  private

    def set_page_to_render
      @page_to_render = action_name
    end

    def set_sub_title
      @sub_title = action_name.to_s.capitalize  
    end


end

end