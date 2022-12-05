- dashboard: test
  title: test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OP7wR4PQVdTv5g9gfg3lZ0
  elements:
  - title: test
    name: test
    model: faa
    explore: flights
    type: looker_line
    fields: [flights.count_delayed_flights, flights.dep_month]
    fill_fields: [flights.dep_month]
    sorts: [flights.dep_month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 1
    col: 0
    width: 9
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"Important Chart"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 4
    height: 0
