class PostPresenter
  def initialize(post = nil)
    @post = post
  end

  def full_name
    return unless @post.user
    "#{@post.user.first_name} #{@post.user.last_name}"
  end

  def formatted_datetime
    @post.created_at.strftime("%B %e, %Y")
  end
end