CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar NOT NULL, "passwd" varchar NOT NULL, "name" varchar NOT NULL, "location" varchar, "bio" varchar, "website" varchar, "verified" boolean DEFAULT 'f' NOT NULL, "state" integer, "qq" varchar, "last_logined_at" datetime, "tagline" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "avatar_file_name" varchar, "avatar_content_type" varchar, "avatar_file_size" integer, "avatar_updated_at" datetime);
CREATE TABLE "sections" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "sort" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "nodes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "section_id" integer, "sort" integer, "topics_count" integer, "summary" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_nodes_on_section_id" ON "nodes" ("section_id");
CREATE TABLE "topics" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "node_id" integer, "body" text, "user_id" integer, "replies_count" integer, "last_reply_user_id" integer, "replied_at" datetime, "source" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_topics_on_node_id" ON "topics" ("node_id");
CREATE INDEX "index_topics_on_user_id" ON "topics" ("user_id");
CREATE TABLE "replies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "topic_id" integer, "body" text, "user_id" integer, "state" integer, "source" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_replies_on_topic_id" ON "replies" ("topic_id");
CREATE INDEX "index_replies_on_user_id" ON "replies" ("user_id");
CREATE TABLE "counters" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20160722081641');

INSERT INTO schema_migrations (version) VALUES ('20160722081719');

INSERT INTO schema_migrations (version) VALUES ('20160722081729');

INSERT INTO schema_migrations (version) VALUES ('20160722081739');

INSERT INTO schema_migrations (version) VALUES ('20160722081746');

INSERT INTO schema_migrations (version) VALUES ('20160722081754');

INSERT INTO schema_migrations (version) VALUES ('20160726084908');

