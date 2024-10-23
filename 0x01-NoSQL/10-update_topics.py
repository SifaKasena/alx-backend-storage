#!/usr/bin/env python3
"""Update a topic in a collection based on name"""


def update_topics(mongo_collection, name, topics):
    """
    Update a topic in a collection based on name.

    Args:
        mongo_collection: A pymongo collection object.
        name: The name of the topic to update.
        topics: The list of topics to add to the topic.

    Returns:
        The updated document.
    """
    return mongo_collection.update_many(
        {"name": name},
        {"$set": {"topics": topics}}
    )
