# The name of this view in Looker is "Wtanondataexampleusers"
view: wtanondataexampleusers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-users`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Name" in Explore.

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: office {
    type: string
    sql: ${TABLE}.office ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
