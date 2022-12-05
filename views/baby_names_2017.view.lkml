# The name of this view in Looker is "Baby Names 2017"
view: baby_names_2017 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `michaelcantu-477-2022092313530.looker_central_demo_baby_names.baby_names_2017`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Count Baby Names 2017" in Explore.

  dimension: count_baby_names_2017 {
    type: number
    sql: ${TABLE}.count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count_baby_names_2017 {
    type: sum
    sql: ${count_baby_names_2017} ;;
  }

  measure: average_count_baby_names_2017 {
    type: average
    sql: ${count_baby_names_2017} ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
