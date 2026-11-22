use role accountadmin;

create or replace storage integration zomato_s3_int
 type = external_stage
 storage_provider = 'S3'
 enabled = true
storage_aws_role_arn = 'arn:aws:iam::536697225831:role/yt-snowflake-s3-role'
storage_allowed_locations = ('s3://yt-zomato-pipeline-dl-prakash/');


arn:aws:iam::536697225831:role/yt-snowflake-s3-role

grant usage on  integration zomato_s3_int to role dbt_role;

desc integration zomato_s3_int;
