class CommentUpdateJob < ApplicationJob
  queue_as :default

  def perform(comment, current_user)
    ProductChannel.broadcast_to(@product.id, comment: CommentsController.render(partial: 'comments/comment', locals: {comment: @comment, current_user: current_user }), average_rating: @product.average_rating)
  end
  
  def render_comment(comment, current_user)
    CommentsController.render(partial: 'comments/comment', locals: { comment: comment, current_user: current_user })
  end
end