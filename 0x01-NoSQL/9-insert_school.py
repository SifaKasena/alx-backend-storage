#!/usr/bin/env python3
"""Insert a document in Python"""


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection based on kwargs.

    Args:
        mongo_collection: A pymongo collection object.
        kwargs: A dictionary containing the document to insert.

    Returns:
        The new _id.
    """
    return mongo_collection.insert_one(kwargs).inserted_id
