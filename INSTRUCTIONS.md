Instructions for adding data from new ad platforms into the MCDM:  
  
1. Add csv file with data from new platform to 'seeds' folder
2. Run 'dbt seed' in the dbt Cloud console
3. Explore the new file in BigQuery or dbt Cloud IDE to correctly map existing fields to MCDM fields
4. Add an sql file with the query which selects necessary fields to 'models' folder and build the new model
6. Update the all_channels.sql to include the new model
