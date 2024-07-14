/// Persistent data storage for measurements.
protocol MeasurementStorage {

    // Insert measurements to the storage. Inserting measurements which are already
    // present in the structure (has equal seq numbers) results in no operation (i.e.
    // can be safely overwritten).
    func upsert(measurements: [Measurement])

    // Get measurements in the given seq range. Should the result length exceed the
    // maxPoints parameter, it is capped to maxPoints. In that case, the points in the
    // result set can be extrapolated using some aggregation function (e.g. mean).
    func get(range: Range<Uint64>, maxPoints: Uint) -> [Measurement]

    // Returns the set of "gaps" in the stored data as a set of intervals, i.e. the
    // continuous areas where the data are missing.
    func getGaps() -> [Range<UInt64>]
}
