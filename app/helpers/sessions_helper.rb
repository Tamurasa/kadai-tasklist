module SessionsHelper
  def current_task
    @current_task ||= task.find_by(id: session[:task_id])
  end

  def logged_in?
    !!current_task
  end
end