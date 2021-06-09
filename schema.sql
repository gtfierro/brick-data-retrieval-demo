CREATE TABLE data(
    time    TIMESTAMPTZ NOT NULL,
    uuid    TEXT NOT NULL,
    value   FLOAT NOT NULL,
    PRIMARY KEY(time, uuid)
);

CREATE INDEX ON data(uuid, time DESC);
SELECT * FROM create_hypertable('data', 'time');
