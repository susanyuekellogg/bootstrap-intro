class FirstOmnicalcTargetController < ApplicationController
  layout "first_omnicalc_target"

  def loan_payment_form

    render("omnicalc_target/new_loan_payment.html.erb")
  end

  def calculate_loan_payment

    render("omnicalc_target/loan_payment_results.html.erb")
  end

  def word_count_form

    render("omnicalc_target/new_word_count.html.erb")
  end

  def calculate_word_count

    render("omnicalc_target/word_count_results.html.erb")
  end

  def stats_form

    render("omnicalc_target/new_stats.html.erb")
  end

  def calculate_stats

    render("omnicalc_target/stats_results.html.erb")
  end

  def time_between_form

    render("omnicalc_target/new_time_between.html.erb")
  end

  def calculate_time_between

    render("omnicalc_target/time_between_results.html.erb")
  end
end
