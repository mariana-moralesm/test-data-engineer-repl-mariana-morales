import apache_beam as beam
from apache_beam.options.pipeline_options import PipelineOptions, StandardOptions
from apache_beam.io import ReadFromJdbc, WriteToBigQuery

class MyOptions(PipelineOptions):
    @property
    def input_table(self):
        return self._get_param('input_table')

    @property
    def output_table(self):
        return self._get_param('output_table')

options = MyOptions()
options.view_as(StandardOptions).runner = 'DataflowRunner'
options.view_as(StandardOptions).streaming = True

with beam.Pipeline(options=options) as p:
    (p
     | 'Read from SQL Server' >> ReadFromJdbc(
         driver_class_name='com.microsoft.sqlserver.jdbc.SQLServerDriver',
         jdbc_url='jdbc:sqlserver://<SQL_SERVER_HOST>:<PORT>;databaseName=<DB>',
         query='SELECT * FROM CDC_Table',
         driver_jar_file='<path_to_jdbc_jar>'
       )
     | 'Write to BigQuery' >> WriteToBigQuery(
         table=options.output_table,
         schema='AUTO',
         create_disposition='CREATE_IF_NEEDED',
         write_disposition='WRITE_APPEND'
       )
    )
