
module Ansa

  # Base class representing a news
  class News
    def initialize(title, description, date, link)
      @title = title
      @description = description
      @date = date
      @link = link
    end

    # @return [String] the title of the news
    def title
      @title
    end

    # @return [String] the description of the news
    def description
      @description
    end

    # @return [Time] the date of the news
    def date
      @date
    end

    # @return [String] the link of the news
    def link
      @link
    end

  end
end
