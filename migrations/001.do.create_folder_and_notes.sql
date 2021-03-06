CREATE TABLE folder (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    folder_name TEXT NOT NULL
);

CREATE TABLE note (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_name TEXT NOT NULL,
    content TEXT NOT NULL,
    date_modified TIMESTAMPTZ DEFAULT now() NOT NULL,
    assigned_folder INTEGER REFERENCES folder(id) ON DELETE CASCADE NOT NULL
);