// Copyright © 2021 Stormbird PTE. LTD.
// This struct sets the price for each unit of gas

import Foundation
import BigInt

public struct GasPriceConfiguration {
    static let defaultPrice: BigInt = EtherNumberFormatter.full.number(from: "9", units: UnitConfiguration.gasPriceUnit)!
    static let minPrice: BigInt = EtherNumberFormatter.full.number(from: "1", units: UnitConfiguration.gasPriceUnit)!
    static let oneGwei: BigInt = EtherNumberFormatter.full.number(from: "1", units: UnitConfiguration.gasPriceUnit)!
    static let maxPrice: BigInt = EtherNumberFormatter.full.number(from: "700", units: UnitConfiguration.gasPriceUnit)!
    static let xDaiGasPrice: BigInt = EtherNumberFormatter.full.number(from: "1", units: UnitConfiguration.gasPriceUnit)!
}
