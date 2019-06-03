Rails.application.routes.draw do
  root("pages#home")

  match("/rock", { :controller => "game", :action => "user_plays_rock", :via => "get" })
  match("/paper", { :controller => "game", :action => "user_plays_paper", :via => "get" })
  match("/scissors", { :controller => "game", :action => "user_plays_scissors", :via => "get" })
  match("/rules", { :controller => "game", :action => "rules_page", :via => "get" })

  match("/old_target/rock", { :controller => "old_game_target", :action => "user_plays_rock", :via => "get" })
  match("/old_target/paper", { :controller => "old_game_target", :action => "user_plays_paper", :via => "get" })
  match("/old_target/scissors", { :controller => "old_game_target", :action => "user_plays_scissors", :via => "get" })
  match("/old_target/rules", { :controller => "old_game_target", :action => "rules_page", :via => "get" })

  match("/first_target/rock", { :controller => "first_game_target", :action => "user_plays_rock", :via => "get" })
  match("/first_target/paper", { :controller => "first_game_target", :action => "user_plays_paper", :via => "get" })
  match("/first_target/scissors", { :controller => "first_game_target", :action => "user_plays_scissors", :via => "get" })
  match("/first_target/rules", { :controller => "first_game_target", :action => "rules_page", :via => "get" })

  match("/second_target/rock", { :controller => "second_game_target", :action => "user_plays_rock", :via => "get" })
  match("/second_target/paper", { :controller => "second_game_target", :action => "user_plays_paper", :via => "get" })
  match("/second_target/scissors", { :controller => "second_game_target", :action => "user_plays_scissors", :via => "get" })
  match("/second_target/rules", { :controller => "second_game_target", :action => "rules_page", :via => "get" })

  match("/third_target/rock", { :controller => "third_game_target", :action => "user_plays_rock", :via => "get" })
  match("/third_target/paper", { :controller => "third_game_target", :action => "user_plays_paper", :via => "get" })
  match("/third_target/scissors", { :controller => "third_game_target", :action => "user_plays_scissors", :via => "get" })
  match("/third_target/rules", { :controller => "third_game_target", :action => "rules_page", :via => "get" })

  match("/loan_payment/new", { :controller => "omnicalc", :action => "loan_payment_form", :via => "get" })
  match("/loan_payment/results", { :controller => "omnicalc", :action => "calculate_loan_payment", :via => "post" })

  match("/word_count/new", { :controller => "omnicalc", :action => "word_count_form", :via => "get" })
  match("/word_count/results", { :controller => "omnicalc", :action => "calculate_word_count", :via => "post" })

  match("/stats/new", { :controller => "omnicalc", :action => "stats_form", :via => "get" })
  match("/stats/results", { :controller => "omnicalc", :action => "calculate_stats", :via => "post" })

  match("/time_between/new", { :controller => "omnicalc", :action => "time_between_form", :via => "get" })
  match("/time_between/results", { :controller => "omnicalc", :action => "calculate_time_between", :via => "post" })

  match("/omnicalc/first_target/loan_payment/new", { :controller => "first_omnicalc_target", :action => "loan_payment_form", :via => "get" })
  match("/omnicalc/first_target/loan_payment/results", { :controller => "first_omnicalc_target", :action => "calculate_loan_payment", :via => "post" })

  match("/omnicalc/first_target/word_count/new", { :controller => "first_omnicalc_target", :action => "word_count_form", :via => "get" })
  match("/omnicalc/first_target/word_count/results", { :controller => "first_omnicalc_target", :action => "calculate_word_count", :via => "post" })

  match("/omnicalc/first_target/stats/new", { :controller => "first_omnicalc_target", :action => "stats_form", :via => "get" })
  match("/omnicalc/first_target/stats/results", { :controller => "first_omnicalc_target", :action => "calculate_stats", :via => "post" })

  match("/omnicalc/first_target/time_between/new", { :controller => "first_omnicalc_target", :action => "time_between_form", :via => "get" })
  match("/omnicalc/first_target/time_between/results", { :controller => "first_omnicalc_target", :action => "calculate_time_between", :via => "post" })

  # ActiveAdmin routes below; ignore
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
