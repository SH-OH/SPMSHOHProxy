import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SPMSHOHProxyTests.allTests),
        testCase(ExtensionsTests.allTests)
    ]
}
#endif
