module ApplicationHelper

  def current_team
    @current_team ||= Team.find(session[:team_id])
  end
  
  def current_game
    current_team.game
  end
  
  def display_output(output)
    begin
      output.pretty_print_inspect
    rescue RuntimeError
      output.inspect
    end
  end
  
end
