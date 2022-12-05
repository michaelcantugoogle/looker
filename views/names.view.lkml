# The name of this view in Looker is "Names"
view: names {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `michaelcantu-477-2022092313530.looker_central_demo_baby_names.names`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Names" in Explore.

  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }

  dimension: logo_image {
    sql: ${names} ;;
    html: <img src="https://storage.googleapis.com/michaelcantu-demo-logos-bucket/{{ value }}.png" width=25 height=25 /> {{ value }} </img> ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
