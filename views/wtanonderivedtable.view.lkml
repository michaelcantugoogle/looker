view: wtanonderivedtable {
  derived_table: {
    sql:
      SELECT
          wtanondataexampleusers.office  AS office,
          COUNT(*) AS wtanondataexampleresponses_count AS response_count,
          AVG(wtanondataexampleresponses.response ) AS average_response,
          CASE response_count
            WHEN <=5 THEN 1
            WHEN >6 THEN 0
          END AS rule_1_flag,
      FROM `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-responses`
           AS wtanondataexampleresponses
      LEFT JOIN `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-users`
           AS wtanondataexampleusers ON wtanondataexampleresponses.userid = wtanondataexampleusers.userid
      GROUP BY
          1
      ;;
  }
   dimension: office {
     type: string
     sql: ${TABLE}.office ;;
   }

  dimension: response_count {
    type: number
    sql: ${TABLE}.response_count ;;
  }

  dimension: average_response {
    type: number
    sql: ${TABLE}.average_response ;;
  }

  dimension: rule_1_flag {
    type: number
    sql: ${TABLE}.rule_1_flag ;;
  }
}
