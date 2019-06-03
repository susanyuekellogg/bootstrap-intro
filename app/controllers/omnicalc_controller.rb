class OmnicalcController < ApplicationController
  layout "omnicalc"

  def loan_payment_form

    render("omnicalc_templates/new_loan_payment.html.erb")
  end

  def calculate_loan_payment

    render("omnicalc_templates/loan_payment_results.html.erb")
  end

  def word_count_form

    render("omnicalc_templates/new_word_count.html.erb")
  end

  def calculate_word_count

    render("omnicalc_templates/word_count_results.html.erb")
  end

  def stats_form

    render("omnicalc_templates/new_stats.html.erb")
  end

  def calculate_stats

    render("omnicalc_templates/stats_results.html.erb")
  end

  def time_between_form

    render("omnicalc_templates/new_time_between.html.erb")
  end

  def calculate_time_between

    render("omnicalc_templates/time_between_results.html.erb")
  end
end
