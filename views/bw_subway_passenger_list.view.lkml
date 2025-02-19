view: bw_subway_passenger_list {
  sql_table_name: `project_b_team.bw_subway_passenger_list`
    ;;

  dimension_group: dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }

  dimension: get_cnt {
    type: number
    sql: ${TABLE}.get_cnt ;;
  }

  dimension: get_off_cnt {
    type: number
    sql: ${TABLE}.get_off_cnt ;;
  }

  dimension: passenger_info_gb_cd {
    type: string
    sql: ${TABLE}.passenger_info_gb_cd ;;
  }

  dimension: station_no {
    type: number
    sql: ${TABLE}.station_no ;;
  }

  dimension: subway_route_nm {
    type: number
    sql: ${TABLE}.subway_route_nm ;;
  }

  dimension: time_gb_cd {
    type: string
    sql: ${TABLE}.time_gb_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
