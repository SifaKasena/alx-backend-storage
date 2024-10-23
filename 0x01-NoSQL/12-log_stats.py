#!/usr/bin/env python3
"""Log stats"""
from pymongo import MongoClient


def log_stats(mongo_collection):
    """
    Prints statistics about logs stored in a MongoDB collection.

    Args:
        mongo_collection: The MongoDB collection containing the logs.

    Prints:
        - Total number of logs.
        - Number of logs for each HTTP method (GET, POST, PUT, PATCH, DELETE).
        - Number of logs where the method is GET and the path is "/status".
    """
    print(f"{mongo_collection.estimated_document_count()} logs")
    print("Methods:")
    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    for method in methods:
        count = mongo_collection.count_documents({"method": method})
        print(f"\tmethod {method}: {count}")
    count = mongo_collection.count_documents(
        {"method": "GET", "path": "/status"}
    )
    print(f"{count} status check")


if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    collection = client.logs.nginx

    log_stats(collection)
