
module Ansa
  class News
    def initialize(title, description, date, link)
      @title = title
      @description = description
      @date = date
      @link = link
    end

    def title
      @title
    end

    def description
      @description
    end

    def date
      @date
    end

    def link
      @link
    end

  end
end
