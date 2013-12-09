define [

]
, ()->
  'use strict'
  (match)->
    match "", "house#index"
    match 'houses/:id', "house#show"
#    match "users/sign_in", "user#sign_in"
#    match "users/sign_out", "user#sign_out"
#    match "users/sign_up", "user#sign_up"
#    match "users/edit", "user#profile", name: 'auth_registration'
