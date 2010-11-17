require 'active_record' unless defined? ActiveRecord::Base

module ActiveRecord

  module Random #:nodoc:

    # ActiveRecord::Base.random returns a random instance of self.
    #
    # This method does not use SQL RAND(). Instead, it performs a record count and then uses Ruby rand.
    #
    # Example
    #   Question.random #=> Random instance of random
    #
    # ActiveRecord::Base.random is a safe method, thus when your model's table is empty it will simply return nil.
    def random
      if minimum = self.minimum(:id)
        where("id >= ?", ::Random.new.rand(minimum..self.maximum(:id))).first
      else
        nil
      end
    end

  end # Random

end # ActiveRecord

ActiveRecord::Base.send :extend, ActiveRecord::Random