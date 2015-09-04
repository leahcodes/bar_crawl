class Styling

  def initialize do
  end

  def status_bar(turn)
    green_status_bar = ['<span class="green-status-bar">']
    turn_number = 20
    turn_number_float = 20.0
    turn_number.times do
      green_status_bar.push("|")
    end
    green_status_bar.insert((turn + 1), "</span>")
    percent = ((turn * 100)/turn_number_float).round(0).to_s + "%"
    green_status_bar.push(percent)
    green_status = green_status_bar.join(" ")
  end

  def status_color(color_number)
    if color_number > 0
      "<span class='positive-status'>"
    else
      "<span class='negative-status'>"
    end
  end


end
