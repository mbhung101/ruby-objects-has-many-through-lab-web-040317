class Patient
  attr_reader :name
  attr_accessor :appointments
  
  def initialize (name)
    @name = name
    @appointments = []
  end

  def add_appointment (appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def appointments
    @appointments
  end

  def doctors
    appointments.collect do |appts|
      appts.doctor
    end
  end

end
