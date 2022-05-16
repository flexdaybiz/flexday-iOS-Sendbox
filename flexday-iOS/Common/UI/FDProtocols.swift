//
//  FDProtocols.swift
//  Store
//
//  Created by inchan on 2022/05/12.
//

import Foundation

protocol FDViewProtocol: NibLoadable, DeallocateStampable, LoadingViewShowable { }

protocol FDViewControllerProtocol: FDViewProtocol, StoryboardLoadable { }
