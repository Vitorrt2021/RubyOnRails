class ArticlesController < ApplicationController
    def show 
        # debugger
        @article = Article.find(params[:id])
    end

    def index 
        @articles = Article.all   
    end

    def new
        @article = Article.new
    end

    def create
    
        @article = Article.new(params.require(:article).permit(:title, :description))
        # render :json => params[:article]
        if @article.save
            # render plain: @article.inspect
            flash[:notice] = 'Article was created successfully'
            redirect_to article_path(@article)
            # redirect_to @article
        else 
            render 'new'
        end
    end

    def edit 
        @article = Article.find(params[:id])
        # debugger
    end
    def update
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :description))
            flash[:notice] = 'Article was update successfully'
            redirect_to @article
        else    
            render 'edit'

        end
        # debugger
    end
end