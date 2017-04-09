require 'pry'

class Doctor

  attr_accessor :appointments, :patient
  attr_reader :name

  def initialize (name)
    @appointments = []
    @name = name
  end

  def add_appointment (appointment)
    self.appointments << appointment
  end

  def appointments
    @appointments
  end

  def patients
    appointments.collect do |appts|
      appts.patient
    end
  end
end
