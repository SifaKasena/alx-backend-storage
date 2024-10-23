#!/usr/bin/env python3
""" 11-schools_by_topic """


def schools_by_topic(mongo_collection, topic):
    """
    Returns the list of school having a specific topic.

    Args:
        mongo_collection: A pymongo collection object.
        topic: The topic to search for.

    Returns:
        A list of school documents.
    """
    return mongo_collection.find({"topics": topic})
