# frozen_string_literal: true

module Authors
  class StatsController < AuthorsController
    def index
      @count_by_date = PageView.count_by_date(7.days.ago, Date.yesterday)
      @unique_count_by_date = PageView.uniq_count_by_date(7.days.ago, Date.yesterday)
    end
  end
end
