class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all
    render({ :template => "item_templates/list" })
  end

  def form
    render({ :template => "item_templates/form" })
  end

  def update
    @url = params[:query_link_url]
    @desc = params[:query_link_description]
    @img = params[:query_thumbnail_url]

    x = Item.new
    x.link_url = @url
    x.link_description = @desc
    x.thumbnail_url = @img
    x.save

    redirect_to("/")
  end

end
