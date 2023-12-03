{{ config(materialized='table') }}

SELECT * FROM read_files(
  '/Volumes/marie_curie/bronze/staging/*.csv',
  format => 'csv',
  header => true,
  mode => 'FAILFAST'
)
