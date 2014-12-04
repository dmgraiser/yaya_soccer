require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post :create, article: { part1: @article.part1, part2: @article.part2, part3: @article.part3, publishable: @article.publishable, q1answer: @article.q1answer, q1wrong1: @article.q1wrong1, q1wrong2: @article.q1wrong2, q2answer: @article.q2answer, q2wrong1: @article.q2wrong1, q2wrong2: @article.q2wrong2, q3answer: @article.q3answer, q3wrong1: @article.q3wrong1, q3wrong2: @article.q3wrong2, quiz1: @article.quiz1, quiz2: @article.quiz2, quiz3: @article.quiz3, video: @article.video }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, id: @article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article
    assert_response :success
  end

  test "should update article" do
    patch :update, id: @article, article: { part1: @article.part1, part2: @article.part2, part3: @article.part3, publishable: @article.publishable, q1answer: @article.q1answer, q1wrong1: @article.q1wrong1, q1wrong2: @article.q1wrong2, q2answer: @article.q2answer, q2wrong1: @article.q2wrong1, q2wrong2: @article.q2wrong2, q3answer: @article.q3answer, q3wrong1: @article.q3wrong1, q3wrong2: @article.q3wrong2, quiz1: @article.quiz1, quiz2: @article.quiz2, quiz3: @article.quiz3, video: @article.video }
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end
end
