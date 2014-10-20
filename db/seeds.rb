4.times {
  phase = FactoryGirl.create :phase
  puts "creating challenges for #{phase.id}"
  10.times { |level|
    unit = FactoryGirl.create :unit, :phase => phase, :number => "unit-#{level}"
    100.times {
      challenge = FactoryGirl.create :challenge, :unit => unit
      puts "created #{challenge.id}"
    }
  }
}

