## BMCustomTableView

[![CI Status](http://img.shields.io/travis/Barbara M Brina/BMCustomTableView.svg?style=flat)](https://travis-ci.org/Barbara M Brina/BMCustomTableView)
[![Version](https://img.shields.io/cocoapods/v/BMCustomTableView.svg?style=flat)](http://cocoapods.org/pods/BMCustomTableView)
[![License](https://img.shields.io/cocoapods/l/BMCustomTableView.svg?style=flat)](http://cocoapods.org/pods/BMCustomTableView)
[![Platform](https://img.shields.io/cocoapods/p/BMCustomTableView.svg?style=flat)](http://cocoapods.org/pods/BMCustomTableView)

## Overview
BMCustomTableView is a UITableView subclass, written in Swift, that lets you customize and animate your table view cells. 

![Alt text](/BM.gif?raw=true)

## Installation with CocoaPods

BMCustomTableView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "BMCustomTableView"
```

## Usage

```ruby
import BMCustomTableView

@IBOutlet weak var customTableView: BMCustomTableView!

func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {

        tableView.customizeCell(cell)
}
```

## Example Project
An example project is included with this repo. To run the example project, clone the repo, and run ``` pod install ``` from the Example directory first.




## Author

Barbara M Brina, bmbrina9@gmail.com

## License

BMCustomTableView is available under the MIT license. See the LICENSE file for more info.
