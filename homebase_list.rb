class HomebaseList
  attr_reader :homebases
  def initialize(args = {})
    @homebases = args.fetch(:homebases, [])
  end

  # def to_s
  #   homebases.each do |homebase|
  #     homebase.print_methods
  #   end
  # end

  # def load_hombases(hash)
  # end


end
