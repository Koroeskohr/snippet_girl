class SnippetsController < ApplicationController

  # GET /snippets
  # GET /snippets.json
  def index
    @snippets = Snippet.all
  end

  # GET /snippets/1
  def show
    set_snippet
  end

  # GET /snippets/new
  def new
    @snippet = Snippet.new
  end

  # GET /snippets/1/edit
  def edit
    set_snippet
  end

  # POST /snippets
  def create
    @snippet = Snippet.new(snippet_params)

    if @snippet.save
      redirect_to @snippet, notice: 'Snippet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /snippets/1
  def update
    set_snippet
    if @snippet.update(snippet_params)
      redirect_to @snippet, notice: 'Snippet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /snippets/1
  def destroy
    set_snippet
    @snippet.destroy
    redirect_to snippets_url, notice: 'Snippet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snippet_params
      params.fetch(:snippet, {})
    end
end
