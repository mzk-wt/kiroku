require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { affiliateUrl: @book.affiliateUrl, author: @book.author, authorKana: @book.authorKana, category: @book.category, evaluation: @book.evaluation, finishReadingDate: @book.finishReadingDate, isbn: @book.isbn, itemCaption: @book.itemCaption, itemUrl: @book.itemUrl, largeImageUrl: @book.largeImageUrl, mediumImageUrl: @book.mediumImageUrl, memo: @book.memo, publisherName: @book.publisherName, purchaseDate: @book.purchaseDate, salesDate: @book.salesDate, seriesName: @book.seriesName, seriesNameKana: @book.seriesNameKana, size: @book.size, smallImageUrl: @book.smallImageUrl, subTitle: @book.subTitle, subTitleKana: @book.subTitleKana, tags: @book.tags, tite: @book.tite, titleKana: @book.titleKana }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { affiliateUrl: @book.affiliateUrl, author: @book.author, authorKana: @book.authorKana, category: @book.category, evaluation: @book.evaluation, finishReadingDate: @book.finishReadingDate, isbn: @book.isbn, itemCaption: @book.itemCaption, itemUrl: @book.itemUrl, largeImageUrl: @book.largeImageUrl, mediumImageUrl: @book.mediumImageUrl, memo: @book.memo, publisherName: @book.publisherName, purchaseDate: @book.purchaseDate, salesDate: @book.salesDate, seriesName: @book.seriesName, seriesNameKana: @book.seriesNameKana, size: @book.size, smallImageUrl: @book.smallImageUrl, subTitle: @book.subTitle, subTitleKana: @book.subTitleKana, tags: @book.tags, tite: @book.tite, titleKana: @book.titleKana }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
