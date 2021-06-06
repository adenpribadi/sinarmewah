class GuestBooksController < ApplicationController
  before_action :set_guest_book, only: [:show, :edit, :update, :destroy]
  before_action :check_permission, only: [:edit, :update, :destroy]

  # GET /guest_books
  # GET /guest_books.json
  def index
    if current_user.present?
      @guest_books = GuestBook.all
    else
      @guest_book = GuestBook.new      
    end
  end

  # GET /guest_books/1
  # GET /guest_books/1.json
  def show    
  end

  # GET /guest_books/new
  def new
    @guest_book = GuestBook.new
  end

  # GET /guest_books/1/edit
  def edit
  end

  # POST /guest_books
  # POST /guest_books.json
  def create
    @guest_book = GuestBook.new(guest_book_params)

    if verify_recaptcha(model: @guest_book, :message=> 'reCAPTCHA verification failed, please try again.') && @guest_book.save      
      respond_to do |format|
        if @guest_book.save
          format.html { redirect_to @guest_book, notice: 'Guest book was successfully created.' }
          format.json { render :show, status: :created, location: @guest_book }
        else
          format.html { render :new }
          format.json { render json: @guest_book.errors, status: :unprocessable_entity }
        end
      end
    else
      render 'new'
    end 
  end

  # PATCH/PUT /guest_books/1
  # PATCH/PUT /guest_books/1.json
  def update
    respond_to do |format|
      if @guest_book.update(guest_book_params)
        format.html { redirect_to @guest_book, notice: 'Guest book was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_book }
      else
        format.html { render :edit }
        format.json { render json: @guest_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_books/1
  # DELETE /guest_books/1.json
  def destroy
    @guest_book.destroy
    respond_to do |format|
      format.html { redirect_to guest_books_url, notice: 'Guest book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_book
      @guest_book = GuestBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_book_params
      params.require(:guest_book).permit(:name, :email, :subject, :comment)
    end
    def check_permission
      if current_user.blank?
        redirect_to root_path
      end
    end
end
