//
//  File.swift
//  
//
//  Created by 游宗諭 on 2020/4/9.
//

import Foundation
public
extension HTTPURLResponse {
	var contentType: ContentType? {
		let value = allHeaderFields[ContentType.headerFaild] as? String
		let type = value?.split(separator: ";").first?.trimmingCharacters(in: .whitespacesAndNewlines)
		return ContentType(by: type)
	}
}
