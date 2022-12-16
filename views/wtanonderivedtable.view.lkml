view: wtanonderivedtable {
  derived_table: {
    sql:
      SELECT
        office_responses.office_name,
        office_responses.category,
        office_responses.question,
        office_responses.response_count,
        office_responses.avg_response,
        CASE
          WHEN office_responses.response_count > 5 THEN 0
          ELSE 1
        END AS rule_1_flag
      FROM (
        SELECT
            wtanondataexampleusers.office  AS office_name,
            wtanondataexampleresponses.category  AS category,
            wtanondataexampleresponses.queston  AS question,
            COUNT(*) AS response_count,
            AVG(wtanondataexampleresponses.response ) AS avg_response
        FROM `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-responses`
            AS wtanondataexampleresponses
        LEFT JOIN `michaelcantu-477-2022092313530.looker_central_demo_baby_names.wt-anon-data-example-users`
            AS wtanondataexampleusers ON wtanondataexampleresponses.userid = wtanondataexampleusers.userid
        GROUP BY
            1, 2, 3) AS office_responses
      ;;
  }
   dimension: office {
     type: string
     sql: ${TABLE}.office_name ;;
   }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: response_count {
    type: number
    sql: ${TABLE}.response_count ;;
  }

  dimension: average_response {
    type: number
    sql: ${TABLE}.avg_response ;;
  }

  dimension: rule_1_flag {
    type: number
    sql: ${TABLE}.rule_1_flag ;;
  }
}
