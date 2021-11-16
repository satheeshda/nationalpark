view: parks {
  sql_table_name: national_parks.parks
    ;;

  dimension: acres {
    type: number
    sql: ${TABLE}.Acres ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: park_code {
    type: string
    sql: ${TABLE}.Park_Code ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}.Park_Name ;;
  }

  dimension: location {
    type:  location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }
  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name]
  }
}
