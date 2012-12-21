class CodebooksController < ApplicationController
  # GET /codebooks
  # GET /codebooks.json
  def index
    @codebooks = Codebook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @codebooks }
    end
  end

  # GET /codebooks/1
  # GET /codebooks/1.json
  def show
    @codebook = Codebook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @codebook }
    end
  end

  # GET /codebooks/new
  # GET /codebooks/new.json
  def new
    @codebook = Codebook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @codebook }
    end
  end

  # GET /codebooks/1/edit
  def edit
    @codebook = Codebook.find(params[:id])
  end

  # POST /codebooks
  # POST /codebooks.json
  def create
    @codebook = Codebook.new(params[:codebook])

    respond_to do |format|
      if @codebook.save
        format.html { redirect_to @codebook, notice: 'Codebook was successfully created.' }
        format.json { render json: @codebook, status: :created, location: @codebook }
      else
        format.html { render action: "new" }
        format.json { render json: @codebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /codebooks/1
  # PUT /codebooks/1.json
  def update
    @codebook = Codebook.find(params[:id])

    respond_to do |format|
      if @codebook.update_attributes(params[:codebook])
        format.html { redirect_to @codebook, notice: 'Codebook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @codebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codebooks/1
  # DELETE /codebooks/1.json
  def destroy
    @codebook = Codebook.find(params[:id])
    @codebook.destroy

    respond_to do |format|
      format.html { redirect_to codebooks_url }
      format.json { head :no_content }
    end
  end
end
