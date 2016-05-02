module Creatable
  def create
    shout = generate_shout
    failure_msg unless shout.save
    redirect_to dashboard_path
  end

  private

  def generate_shout
    content = build_content
    current_user.shouts.build(content: content)
  end

  def failure_msg
    flash.alert = "Could not shout"
  end
end
