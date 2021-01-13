class Patient
    attr_accessor :name, :doctor
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date,doctor)
      Appointment.new(date, self, doctor)
    end


    def appointments
      Appointment.all {|appointments| appointments.patient == self}
    end

    def self.all
        @@all
    end

    def doctors
      self.appointments.collect {|appointment| appointment.doctor}
    end

end
