class HomeController < ApplicationController
  
  before_filter :authorize, only: [:new,:edit]
  
  def create
    Quote.create(body: params[:body], author: params[:author])
    redirect_to quote_path, notice: "Quote added!"
  end
  
  def new
  end
  
  def edit
    @quote = Quote.find(params[:id])
  end
  
  def update
    q = Quote.find(params[:id])
    q.update(body: params[:body], author: params[:author])
  end

end