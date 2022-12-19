view: dt_responses_office {
  derived_table: {
    sql: SELECT
          wtanondataexampleusers.office  AS wtanondataexampleusers_office,
          wtanondataexampleresponses.category  AS wtanondataexampleresponses_category,
          wtanondataexampleresponses.queston  AS wtanondataexampleresponses_queston,
          COUNT(*) AS wtanondataexampleresponses_count,
          AVG(wtanondataexampleresponses.response ) AS wtanondataexampleresponses_average_response
      FROM `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-responses`
           AS wtanondataexampleresponses
      LEFT JOIN `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-users`
           AS wtanondataexampleusers ON wtanondataexampleresponses.userid = wtanondataexampleusers.userid
      GROUP BY
          1,
          2,
          3
      LIMIT 30000
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: wtanondataexampleusers_office {
    type: string
    sql: ${TABLE}.wtanondataexampleusers_office ;;
  }

  dimension: wtanondataexampleresponses_category {
    type: string
    sql: ${TABLE}.wtanondataexampleresponses_category ;;
  }

  dimension: wtanondataexampleresponses_queston {
    type: string
    sql: ${TABLE}.wtanondataexampleresponses_queston ;;
  }

  dimension: wtanondataexampleresponses_count {
    type: number
    sql: ${TABLE}.wtanondataexampleresponses_count ;;
  }

  dimension: wtanondataexampleresponses_average_response {
    type: number
    sql: ${TABLE}.wtanondataexampleresponses_average_response ;;
  }

  set: detail {
    fields: [wtanondataexampleusers_office, wtanondataexampleresponses_category, wtanondataexampleresponses_queston, wtanondataexampleresponses_count, wtanondataexampleresponses_average_response]
  }
}
