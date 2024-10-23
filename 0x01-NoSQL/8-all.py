#!/usr/bin/env python3
"""List all documents in Python"""


def list_all(mongo_collection):
    """
    Lists all documents in a MongoDB collection.

    Args:
        mongo_collection: A pymongo collection object.

    Returns:
        A cursor to the documents in the collection.
    """
    return mongo_collection.find()
