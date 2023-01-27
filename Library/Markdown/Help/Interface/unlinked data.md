[<< Back to Overview](./Overview.md "Overview")

# Unlinked Data
The underlying data for GCS is a bunch of JSON files. When an element is placed somewhere, or a setting set, it is duplicated as a whole to the new location and there is no link back to the source. The benefit is that if the source is deleted, it still exists and functions wherever it was duplicated. The drawback is that if the source is updated, the duplicates are not.

The practical example is that the [Master Library](./Library%20Tree.md "Library Tree") can be updated without breaking anything. The new library will have any new features and fixes. The bad news is that the previously duplicated data still has any bugs (e.g.: a trait with an incorrect point cost).

## Related
Everything.

***Last updated for v5.7.0***