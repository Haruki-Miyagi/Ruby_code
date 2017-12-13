def alert_for(flash_type){
    success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
end

puts alert_for('alert-sssssssssssssss')
puts alert_for(:error)
puts alert_for(:alert)
puts alert_for(:notice)

