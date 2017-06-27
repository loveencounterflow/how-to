


## Renaming Results of Functions

Equivalent:

```sql
DROP FUNCTION IF EXISTS cid_ranges_from_tag( TEXT ) CASCADE;
CREATE FUNCTION cid_ranges_from_tag( IN tag_txt TEXT ) RETURNS SETOF unicode_cid_range_type AS $$
  SELECT cid_range FROM ucds_raw WHERE ARRAY[ tag_txt ] <@ tag
  $$ LANGUAGE sql IMMUTABLE RETURNS NULL ON NULL INPUT;
```

```sql
SELECT
    *,
    'vertical' AS tag
  FROM
    cid_ranges_from_tag( 'vertical' ) AS cid_range;
```

```sql
SELECT
    cid_ranges_from_tag( 'vertical' ) AS cid_range,
    'vertical'                        AS tag;
```

More flexible:

```sql
WITH
  cids AS ( SELECT cids_from_tag( 'vertical' ) AS cid )
SELECT
    cids.cid                      AS cid,
    'vertical'                    AS tag,
    fmt.chr_from_cid( cids.cid )  AS glyph
  FROM
    cids;
```




