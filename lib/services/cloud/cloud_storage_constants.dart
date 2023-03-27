const ownerUserIdFieldName = 'user_id';
const textFieldName = 'text';











 
const dbName = 'notes.db';
const noteTable = 'note';
const userTable = 'user';
const String emailColumn = 'email';
const String idColumn = 'id';
const userIdColumn = 'user_id';
const String textColumn = 'text';
const isSyncWithCloudColumn = 'is_synced_with_cloud';
const createUserTable = '''
          CREATE TABLE IF NOT EXISTS "user"(
	"id"	INTEGER NOT NULL,
	"email"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);''';
const createNoteTable = '''
CREATE TABLE IF NOT EXISTS "note" (
	"id"	INTEGER NOT NULL,
	"user_id"	INTEGER NOT NULL,
	"text"	TEXT,
	"is_synced_with_cloud"	INTEGER NOT NULL DEFAULT 0,
	FOREIGN KEY("user_id") REFERENCES "user"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
''';
