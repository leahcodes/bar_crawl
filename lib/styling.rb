class Styling

  define_method(:initialize) do
  end

  define_method(:status_bar) do |turn|
    green_status_bar = ['<span class="green-status-bar">']
    turn_number = 20
    turn_number_float = 20.0
    turn_number.times do
      green_status_bar.push("|")
    end
    step_number = turn + 1
    step_number.times do
      green_status_bar.insert(step_number, "</span>")
      step_number += 1
    end
    percent = ((turn * 100)/turn_number_float).round(0).to_s + "%"
    green_status_bar.push(percent)
    green_status = green_status_bar.join(" ")
  end
end
