class Homebase
  attr_reader :address, :borough, :community_district, :homebase_office, :neighborhood, :phone_number
  def initialize(args = {})
    @address = args.fetch("address", '')
    @borough = args.fetch("borough", '')
    @community_district = args.fetch("community_district", '')
    @homebase_office = args.fetch("homebase_office", '')
    @neighborhood = args.fetch("neighborhood", '')
    @phone_number = args.fetch("phone_number", '')
  end

  def to_s
    <<-string_form

    Address:
    #{address}

    Borough:
    #{borough}

    Neighborhood:
    #{neighborhood}

    Phone Number:
    #{phone_number}

    Homebase Office:
    #{homebase_office}


    string_form
  end

end


