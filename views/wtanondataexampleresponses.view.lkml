# The name of this view in Looker is "Wtanondataexampleresponses"
view: wtanondataexampleresponses {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-responses`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: queston {
    type: string
    sql: ${TABLE}.queston ;;
  }

  dimension: response {
    type: number
    sql: ${TABLE}.response ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_response {
    type: sum
    sql: ${response} ;;
  }

  measure: average_response {
    type: average
    sql: ${response} ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
