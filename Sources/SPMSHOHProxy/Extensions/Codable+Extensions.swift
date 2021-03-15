import Foundation

extension Encodable {
    public func encode(_ encoder: JSONEncoder = JSONEncoder()) throws -> Data {
        return try encoder.encode(self)
    }
}

extension Decodable {
    public static func decode(_ decoder: JSONDecoder = JSONDecoder(),
                       data: Data) throws -> Self {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(self, from: data)
    }
}
