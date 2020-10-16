import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PBColorTests.allTests),
        testCase(PBNetworkingTests.allTests)
    ]
}
#endif
