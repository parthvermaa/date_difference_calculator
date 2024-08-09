# frozen_string_literal: true

require 'date'
require_relative "difference_calculator/version"

module DifferenceCalculator
  def self.difference_in_months(start_date, end_date)
    (end_date - start_date).to_f / 365 * 12
  end

  def self.exact_month_difference(start_date, end_date)
    month_number = -1
    month_diff = difference_in_months(start_date, end_date)

    (month_diff * 2).to_i.times do |month|
      days = days_in_month(end_date)
      actual_date = (end_date - days) + 1
      month_number += 1

      break if start_date.between?(actual_date, end_date)
    end

    return 0 if month_number == -1

    month_number < 4 ? 4 : month_number
  end

  def self.days_in_month(date)
    Date.new(date.year, date.month, -1).day
  end
end
