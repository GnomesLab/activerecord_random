require 'active_record' unless defined? ActiveRecord::Base
require 'activerecord_random'

ActiveRecord::Base.send :extend, ActiveRecord::Random