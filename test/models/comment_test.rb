require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  fixtures :comments

  test "comment attributes must not be empty" do
    comment = Comment.new
    assert comment.invalid?
    assert comment.errors[:commenter].any?
    assert comment.errors[:body].any?
  end

end
