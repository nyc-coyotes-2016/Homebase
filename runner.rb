require_relative 'view'
require_relative 'parser'
require_relative 'controller'
require_relative 'homebase_list'
require_relative 'homebase'
require_relative 'cat'

controller = Controller.new(view: View, homebase_list: HomebaseList, homebase: Homebase, parser: Parser, cat: Cat)

controller.run
