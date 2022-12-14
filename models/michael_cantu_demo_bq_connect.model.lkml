# Define the database connection to be used for this model.
connection: "looker-private-demo-1"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: michael_cantu_demo_bq_connect_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: michael_cantu_demo_bq_connect_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Michael Cantu Demo Bq Connect"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: baby_names_2017 {}
explore: names {}
explore: wtanondataexampleresponses {
  join: wtanondataexampleusers {
    type: left_outer
    relationship: many_to_one
    sql_on: ${wtanondataexampleresponses.userid} = ${wtanondataexampleusers.userid} ;;
  }
  join: dt_responses_office {
    from: wtanondataexampleusers
    type: left_outer
    relationship:many_to_one
    sql_on: ${wtanondataexampleusers.officeid} = ${dt_responses_office.officeid} ;;
  }
}
explore: dt_responses_office {}

include: "/dashboards/*.dashboard.lookml"
