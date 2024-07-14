enum SampleParameter {
    case temperature
    case humidity
    case preasure
    case co2
    case co
    case pm
}

struct Sample {
    var param: SampleParameter
    var value: Double
}

struct Measurement {
    var seq: Int
    var timestamp: UInt
    var samples: [Sample]
}
