//
//  ITCommandUsage.swift
//  IpaTool
//
//  Created by Stefan on 04/10/14.
//  Copyright (c) 2014 Stefan van den Oord. All rights reserved.
//

import Foundation

class ITCommandUsage : ITCommand
{
    
    override func execute(args:[String]) -> String
    {
        return "ipatool version \(ITMain.version()). Copyright (c) 2014 Stefan van den Oord\n" +
            "\n" +
            "Usage: ipatool IPA [OPTIONS]\n" +
            "IPA is a file with extension '.ipa'\n" +
            "\n" +
            "Available options:\n" +
            "  info [default]  Shows high level info about the IPA\n" +
            "  version         Shows the version number (CFBundleShortVersionString)\n" +
            "  build           Shows the build number (CFBundleVersion)\n" +
            "  extract-certs   Extracts certificates used for code signing and writes them\n" +
            "                  to files in the current working directory.\n" +
            "  expiration      Shows expiration date of the embedded provisioning profile\n" +
            "  resign          Resign the IPA and write the resigned IPA to the current\n" +
            "                  working directory according to the given options:\n" +
            "                  NEW-PROVISIONING-PROFILE [required]\n" +
            "                  NEW-BUNDLE-IDENTIFIER [optional]\n" +
            "\n" +
            "Example:\n" +
            "\n" +
            "ipatool myApp.ipa resign /path/to/profile.mobileprovision com.example.new.bundleIdentifier\n" +
            "\n"
    }
}
