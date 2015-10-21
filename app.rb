require_relative 'db/connection'

module App
  class Server < Sinatra::Base

    configure :development do
      require 'sinatra/base'
      require 'sinatra/reloader'
      require 'pry'
      require 'redcarpet'
      register Sinatra::Reloader
      set :sessions, true

    end

    configure :production do
      require 'sinatra/base'
      require 'redcarpet'
      set :sessions, true
    end

    def current_user
      session[:user_id]
    end

    def logged_in?
      !current_user.nil?
    end

    def markdown(text)
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :hard_wrap => true, :space_after_headers => true )
      markdown.render(text)
    end

    # -- LOGIN --

    get '/' do
      erb :login
    end

    post '/users/login' do
      email = params[:email]
      password = params[:password]
      query = "SELECT * FROM users WHERE email = $1 AND password = $2"
      @user = $db.exec_params(query, [email, password])
      user_id = @user.first["id"]
      if @user.first.nil?
        @message = "Invalid Login"
        erb :dashboard
      else
        session[:user_id] = user_id
        redirect "/users/#{user_id}"
      end
    end

    # -- LOGOUT --

    delete 'users/login' do
      session[:user_id] = nil
      redirect '/'
    end

    # -- USER PAGE --

    get '/users/:id' do
      id = params[:id]
      query = "SELECT * FROM authors WHERE id = $1"
      @user = $db.exec_params(query, [id]).first
      erb :user
    end

    # -- CREATE --

    get '/create' do
      if logged_in?
        author_id = current_user
        category_id = params[:category].to_i
        headline = params[:headline]
        summary = params[:summary]
        body = params[:body]
        query = "INSERT INTO articles (author_id, category_id, headline, body, summary, created_at, last_updated) VALUES ($1, $2, $3, $4, $5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
        @create = $db.exec_params(query, [author_id, category_id, headline, body, summary])
        redirect "/articles"
      else
        status 403
        "PERMISSION DENIED"
      end
    end

    # -- ARTICLES --

    get '/articles' do
      query = "SELECT articles.*, authors.name AS user FROM articles JOIN authors ON authors.id = articles.author_id"
      @results = $db.exec_params(query);
      erb :articles
    end

    get '/articles/:id' do
      article_id = params[:id]
      query = "SELECT categories.*, articles.id AS art_id, articles.headline AS headline, articles.summary AS summary, articles.body AS body, articles.last_updated AS last_updated, articles.created_at AS created_at, authors.name AS author_name, authors.id AS auth_id FROM categories INNER JOIN articles ON articles.category_id = categories.id INNER JOIN authors ON articles.author_id = authors.id WHERE articles.id = $1"
      @articles = $db.exec_params(query, [article_id]);
      erb :article
    end

    # -- EDIT ARTICLES -- 

    get '/articles/:id/edit' do
      article_id = params[:id]
      query = "SELECT categories.*, articles.id AS art_id, articles.headline AS headline, articles.summary AS summary, articles.body AS body, articles.last_updated AS last_updated, articles.created_at AS created_at, authors.name AS author_name FROM categories INNER JOIN articles ON articles.category_id = categories.id INNER JOIN authors ON articles.author_id = authors.id WHERE articles.id = $1"
      @articles = $db.exec_params(query, [article_id]);
      erb :edit
    end

    patch '/articles/:id' do
      article_id = params[:id]
      query = "SELECT categories.*, articles.id AS art_id, articles.headline AS headline, articles.summary AS summary, articles.body AS body, articles.last_updated AS last_updated, articles.created_at AS created_at, authors.name AS author_name FROM categories INNER JOIN articles ON articles.category_id = categories.id INNER JOIN authors ON articles.author_id = authors.id WHERE articles.id = $1"
      @articles = $db.exec_params(query, [article_id]);
      art_id = params[:id]
      headline = params[:headline]
      summary = params[:summary]
      body = params[:body]
      update = "UPDATE articles SET headline = $1, summary = $2, body = $3, last_updated = CURRENT_TIMESTAMP WHERE id = $4"
      $db.exec_params(update, [headline, summary, body, article_id])
      redirect "/articles/#{article_id}"
    end

    delete '/articles/:id' do 
      id = params[:id]
      query = "DELETE FROM articles WHERE articles.id = $1"
      $db.exec_params(query, [id])
      redirect "/articles"
    end

    # -- CATEGORIES --

    get '/categories' do
      query = "SELECT * FROM categories"
      @categories = $db.exec_params(query);
      erb :categories
    end

    get '/categories/:id' do
      category_id = params[:id]
      @category = $db.exec_params("SELECT * FROM categories WHERE id = $1", [category_id])
      query = "SELECT categories.*, articles.headline AS headline, articles.id AS article_id FROM categories JOIN articles ON categories.id = articles.category_id WHERE categories.id = $1"
      @cat_articles = $db.exec_params(query, [category_id]);
      erb :category
    end

    # -- AUTHORS --

    get '/authors' do
      query = "SELECT * FROM authors"
      @authors = $db.exec_params(query)
      erb :authors
    end

    get '/authors/:id' do
      id = params[:id]
      query = "SELECT authors.*, articles.author_id, articles.headline, articles.id AS art_id FROM authors JOIN articles ON authors.id = articles.author_id WHERE authors.id = $1"
      @author = $db.exec_params(query, [id])
      results = "SELECT * FROM authors WHERE id = $1"
      @no_author = $db.exec_params(results, [id])
      erb :author
    end

  end

end