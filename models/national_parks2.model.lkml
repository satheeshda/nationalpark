connection: "national_parks"

# include all the views
include: "/views/**/*.view"

datagroup: national_parks2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: national_parks2_default_datagroup

explore: connection_reg_r3 {}

explore: trails {}

explore: park_species {}

explore: parks {}
