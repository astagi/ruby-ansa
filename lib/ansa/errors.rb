module Ansa

  # Base class for errors
  class AnsaError < StandardError
    def initialize(msg="General error")
      super
    end
  end

end
