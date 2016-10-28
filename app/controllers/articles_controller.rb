class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    
    def create
        render plain: params[:article].inspect
        #to see what is created?
        @article = Article.new(article_params)
        #.new will not work! it need parameters
        @article.save
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :description)
            #coze??? article vola samo seba???
        end
end