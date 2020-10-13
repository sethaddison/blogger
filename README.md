# Blogger

Blogger is an assignment in the Odin Project. The assignment is to create a blogging
application that supports the following architecture:

1) Posts - Post have a title, a body, optional tags, and optional comments
2) Comments - Comments have an author, a body, and belong to a post
3) Tags - Posts can have multiple tags and tags can belong to multiple posts. Therefore,
we have a has_many :through relationship requiring a Taggings join table.
