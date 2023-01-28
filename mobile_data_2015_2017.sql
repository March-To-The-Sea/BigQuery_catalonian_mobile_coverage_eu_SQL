WITH network_providers AS
  (SELECT DISTINCT network, Count(network) AS occurence_value
  FROM bigquery-public-data.catalonian_mobile_coverage.mobile_data_2015_2017
  GROUP BY network
  ORDER BY occurence_value DESC)

SELECT *
FROM network_providers