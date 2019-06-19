class CasinosController < ApplicationController
  def index
    @casinos = Casino.all
  end

  def show
    @casino = Casino.find(params[:id])
  end

  def new
    @casino = Casino.new
  end
end
