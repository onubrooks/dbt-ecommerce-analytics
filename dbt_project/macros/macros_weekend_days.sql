{% macro is_weekend(date_column) %}
  EXTRACT(DAYOFWEEK FROM {{ date_column }}) IN (1,7)
{% endmacro %}