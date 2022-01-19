require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = create(:post)
    @unpublished_post = create(:post, is_published: false)
  end

  test "public users should not get index" do
    get posts_url
    assert_response :redirect
  end

  test "public users should not edit" do
    get edit_post_url(@post)
    assert_redirected_to sign_in_path
  end

  test "public users should not destroy" do
    assert_difference("Post.count", 0) do
      delete post_url(@post)
    end
    assert_redirected_to sign_in_path
  end

  # test "should get index" do
  #   get posts_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_post_url
  #   assert_response :success
  # end

  # test "should create post" do
  #   assert_difference("Post.count") do
  #     post posts_url, params: { post: { author: @post.author, date: @post.date, is_published: @post.is_published, summary: @post.summary, title: @post.title } }
  #   end

  #   assert_redirected_to post_url(Post.last)
  # end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_post_url(@post)
  #   assert_response :success
  # end

  # test "should update post" do
  #   patch post_url(@post), params: { post: { author: @post.author, date: @post.date, is_published: @post.is_published, summary: @post.summary, title: @post.title } }
  #   assert_redirected_to post_url(@post)
  # end

  # test "should destroy post" do
  #   assert_difference("Post.count", -1) do
  #     delete post_url(@post)
  #   end

  #   assert_redirected_to posts_url
  # end
end
