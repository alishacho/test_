connection: "alisha_test"

# include all the views
include: "/views/**/*.view"

datagroup: alisha_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alisha_test_default_datagroup

explore: bm_f_card_anal_5y {}

explore: bl_subway_card_list {}

explore: bl_subway_passenger_list {}

explore: bw_subway_card_list {}

explore: bm_f_pssenger_anal_5y {}

explore: bw_subway_passenger_list {}
