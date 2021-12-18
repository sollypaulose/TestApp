//
//  DataLoader.swift
//  TestApp
//
//  Created by Solly Paulose on 18/12/21.
//

import Foundation
public class DataLoader {
    var employee = [Employee]()
    init() {
        load()
    }
    func load() {
        let url = URL(string: "http://www.mocky.io/v2/5d565297300000680030a98")!
        do {
        let dataUrl =
            try Data(contentsOf: url)
            let dataFromAppBundle =
                try Data(contentsOf: Bundle.main.url(forResource: "data", withExtension: "json")!)
                
                let jsonDecoder = JSONDecoder()
                
                    let appBundleDataFromJson =
                        try jsonDecoder.decode([employee].self, from: dataFromAppBundle)
                    self.employee = appBundleDataFromJson
        } catch {
            print(error)
        }
                
    }
}
