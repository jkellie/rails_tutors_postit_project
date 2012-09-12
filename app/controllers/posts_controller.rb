class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def voteup
    @post = Post.find(params[:id])
    
    @post.vote_score = @post.vote_score + 1
    @post.save
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for voting.' }
    end
  end
  
  def votedown
    @post = Post.find(params[:post])
    
    @post.vote_score = @post.vote_score - 1
    @post.save
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for voting.' }
    end
  end

end
