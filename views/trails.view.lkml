view: trails {
  sql_table_name: `national_parks.trails`
    ;;
  drill_fields: [trail_id]

  dimension: trail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.trail_id ;;
  }

  dimension: _geoloc {
    type: string
    sql: ${TABLE}._geoloc ;;
  }

  dimension: activities {
    type: string
    sql: ${TABLE}.activities ;;
  }

  dimension: area_name {
    type: string
    sql: ${TABLE}.area_name ;;
  }

  dimension: avg_rating {
    type: number
    sql: ${TABLE}.avg_rating ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: difficulty_rating {
    type: number
    sql: ${TABLE}.difficulty_rating ;;
  }

  dimension: elevation_gain {
    type: number
    sql: ${TABLE}.elevation_gain ;;
  }

  dimension: features {
    type: string
    sql: ${TABLE}.features ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num_reviews {
    type: number
    sql: ${TABLE}.num_reviews ;;
  }

  dimension: popularity {
    type: number
    sql: ${TABLE}.popularity ;;
  }

  dimension: route_type {
    type: string
    sql: ${TABLE}.route_type ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.units ;;
  }

  dimension: visitor_usage {
    type: number
    sql: ${TABLE}.visitor_usage ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      trail_id,
      area_name,
      city_name,
      state_name,
      name,
      country_name
    ]
  }
}
