//
//  CustomizacaoViewModel.swift
//  ProjetoFinal
//
//  Created by Leticia Sousa Siqueira on 27/01/21.
//

import UIKit
import CommonsService

class CustomizacaoViewModel {
    
    var moedas: [Moeda] = [Moeda]()
    var reloadTableView: (() -> Void)?
    var showError: (() -> Void)?
    var showLoading: (() -> Void)?
    var hideLoading: (() -> Void)?
    let moedaService: MoedaService
    
    init(moedaService: MoedaService = MoedaService()) {
        self.moedaService = moedaService
    }
    
    private var cellViewModels: [DataListCellViewModel] = [DataListCellViewModel]() {
        didSet {
            self.reloadTableView?()
        }
    }

    func getData() {
        showLoading?()
        MoedaDAO.shared.getMoedas { (success, moeda) in
            self.hideLoading?()
            if success {
                self.createCell(moedas: moeda)
                self.reloadTableView?()
            } else {
                self.showError?()
            }
        }
    }
    
    var numberOfCells: Int {
        return cellViewModels.count
    }
    
    func getCellViewModel( at indexPath: IndexPath ) -> DataListCellViewModel {
        return cellViewModels[indexPath.row]
    }
    
    func createCell(moedas: [Moeda]) {
        self.moedas = moedas
        var vms = [DataListCellViewModel]()
        for data in moedas {
            vms.append(DataListCellViewModel(nomeText: data.name ?? "", siglaText: data.siglaMoeda, cotacaoText: data.priceUSD ?? 0, imagemURL: data.idIcon ?? ""))
        }
        cellViewModels = vms
    }
}

struct DataListCellViewModel {
    let nomeText: String
    let siglaText: String
    let cotacaoText: Double
    let imagemURL: String
}
