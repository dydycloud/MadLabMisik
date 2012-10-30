require 'will_paginate/array'
class HomeController < ApplicationController
  def index
  	@posts = Post.all.paginate(:page => params[:page], :per_page => 6)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def show
  	@post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
end
