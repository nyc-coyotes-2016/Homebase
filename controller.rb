require 'pry'

class Controller
  attr_reader :view, :homebase_list, :homebase, :parser
  def initialize(args)
    @view = args.fetch(:view)
    @homebase_list = args.fetch(:homebase_list)
    @homebase = args.fetch(:homebase)
    @parser = args.fetch(:parser)
  end

  def run
    arg = View.get_input
    if arg
      # binding.pry
      array =  HomebaseList.new(homebases: Parser.load(arg))
      view.display_homebases(array)
      view.party_time
    end
  end

end
