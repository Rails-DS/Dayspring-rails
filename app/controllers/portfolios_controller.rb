class PortfoliosController < ApplicationController
	def index 
		@portfolio_items = Portfolio.all
	end


	def new
		@portfolio_item = Portfolio.new
	end

# Creating new Portfolio

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio item  was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

#  Editing the portfolio 

  def edit
  	@portfolio_item = Portfolio.find(params[:id])
  end


# Updatig portfolio 

  def update
  	 @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path(@portfolio_item), notice: "Blog was successfully updated." }
       else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show 
  	 @portfolio_item = Portfolio.find(params[:id])
  end

 def destroy

	@portfolio_item = Portfolio.find(params[:id])
	puts "coming here"
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio item was Removed." }
      
    end
  end

end