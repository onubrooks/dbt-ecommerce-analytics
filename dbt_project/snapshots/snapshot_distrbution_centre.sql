{% snapshot snapshot_distribution_center %}
   {{
	config(
		target_schema='dbt',
		unique_key='id',
		strategy='check',
		check_cols=['name','latitude','longitude']
	)
   }}

   SELECT * FROM {{ ref("distribution_center") }}

{% endsnapshot %}