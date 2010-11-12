module ActiveRecord

  module FinderMethods

    def find(*args)
      args == [:random] ? self.random : super(args)
    end

  end # FinderMethods

end # ActiveRecord