# Hospital Operations SQL Analytics

A SQL portfolio project that uses SQLite to analyze hospital visit volume, patient wait times, length of stay, and inpatient bed occupancy. The dataset is entirely synthetic: 4 departments, 100 patient records, and 300 visits.

## Run locally

From this folder, run the script with SQLite 3.38 or later. Use a fresh database for each run:

```sh
sqlite3 -header -column :memory: < Hospital_Operations_SQLite.sql
```

The script creates and links the three tables, populates them with sample data, and runs six queries. The occupancy query measures a single point in time.

## Example result

| Department | Visits | Average wait (min) | Average stay (min) |
| --- | ---: | ---: | ---: |
| Emergency | 75 | 47.2 | 329.0 |
| Cardiology | 75 | 45.8 | 330.0 |
| General Medicine | 75 | 46.8 | 331.0 |
| Orthopedics | 75 | 46.6 | 332.0 |

These figures demonstrate the queries on simulated visits.
