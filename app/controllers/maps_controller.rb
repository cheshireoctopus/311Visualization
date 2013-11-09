class MapsController < ApplicationController

  def about
  end

  def view
    @complaints = Complaint.all
  end

  def party
    @complaints = []
    complaints = Complaint.all
    complaints.each do |x|
      if x.descriptor == 'Loud Music/Party'
        @complaints << x
      end
    end
  end

  def dirty_sidewalk
    @complaints = []
    complaints = Complaint.all
    complaints.each do |x|
      if x.descriptor == 'E3 Dirty Sidewalk'
        @complaints << x
      end
    end
  end

  def graffiti
    @complaints = []
    complaints = Complaint.all
    complaints.each do |x|
      if x.descriptor == 'Graffiti'
        @complaints << x
      end
    end
  end

  def street_light
    @complaints = []
    complaints = Complaint.all
    complaints.each do |x|
      if x.descriptor == 'Street Light Out'
        @complaints << x
      end
    end
  end


end
