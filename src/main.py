from pyspark.sql import SparkSession


def run(spark):
    df = spark.read.csv("/mnt/adls/test/ratings2.csv")
    df.show()


if __name__ == "__main__":
    spark = (SparkSession
             .builder
             .appName("Ingest Data")
             .master("local[3]")
             .config("spark.streaming.stopGracefullyOnShutdown", "true")
             .config("spark.sql.streaming.schemaInference", "true")
             .getOrCreate())

    run(spark)
