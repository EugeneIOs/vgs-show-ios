//
//  APIHostURLPolicy.swift
//  VGSShowSDK
//

import Foundation

internal enum APIHostURLPolicy {

	/**
	 Use vault url, custom hostname not set.

	 - Parameters:
			- url: `URL` object, default vault URL.
	*/
	case vaultURL(_ vaultURL: URL)

	/**
	 Custom host URL.

	 - Parameters:
			- status: `CustomHostStatus` object, hostname status.
	*/
	case customHostURL(_ status: APICustomHostStatus)

	/**
	 Invalid vault URL, API client has incorrect configuration and cannot send request.
	*/
	case invalidVaultURL

	var url: URL? {
		switch self {
		case .invalidVaultURL:
			return nil
		case .vaultURL(let vaultURL):
			return vaultURL
		case .customHostURL(let hostStatus):
			return hostStatus.url
		}
	}
}
