// AlertKit.swift
//
// Copyright (c) 2015 Thi Doan
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

/**
    Extension of UIViewController to conveniently show an alert or action sheet with a single line of code. Please note that these methods must be called from a UIViewController instance.
*/
extension UIViewController {

    // MARK: - Alert Style

    /**
        Present a title-only alert controller and an OK button to dissmiss the alert.

        - parameter title: The title of the alert.
    */
    public func showAlertWithTitle(_ title: String?) {
        showAlert(title, message: nil, cancelButtonTitle: "OK")
    }

    /**
        Present a message-only alert controller and an OK button to dissmiss the alert.

        - parameter message: The message content of the alert.
    */
    public func showAlertWithMessage(_ message: String?) {
        showAlert("", message: message, cancelButtonTitle: "OK")
    }

    /**
        Present an alert controller with a title, a message and an OK button. Tap the OK button will dissmiss the alert.

        - parameter title: The title of the alert.
        - parameter message: The message content of the alert.
    */
    public func showAlert(_ title: String?, message: String?) {
        showAlert(title, message: message, cancelButtonTitle: "OK")
    }

    /**
        Present an alert controller with a title, a message and a cancel/dismiss button with a title of your choice.

        - parameter title: The title of the alert.
        - parameter message: The message content of the alert.
        - parameter cancelButtonTitle: Title of the cancel button of the alert.
    */
    public func showAlert(_ title: String?, message: String?, cancelButtonTitle: String) {
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel, handler: nil)
        showAlert(title, message: message, alertActions: [cancelAction])
    }

    /**
        Present an alert controller with a title, a message and an array of handler actions.

        - parameter title: The title of the alert.
        - parameter message: The message content of the alert.
        - parameter alertActions: An array of alert action in UIAlertAction class.
    */
    public func showAlert(_ title: String?, message: String?, alertActions: [UIAlertAction]) {
        showAlert(title, message: message, preferredStyle: .alert, alertActions: alertActions)
    }

    // MARK: - Action Sheet Style

    /**
        Present a title-only action sheet and an OK button to dissmiss the alert.

        - parameter title: The title of the action sheet.
    */
    public func showActionSheetWithTitle(_ title: String?) {
        showActionSheet(title, message: nil, cancelButtonTitle: "OK")
    }

    /**
        Present a message-only action sheet and an OK button to dissmiss the alert.

        - parameter message: The message content of the action sheet.
    */
    public func showActionSheetWithMessage(_ message: String?) {
        showActionSheet(nil, message: message, cancelButtonTitle: "OK")
    }

    /**
        Present an action sheet with a title, a message and an OK button. Tap the OK button will dissmiss the alert.

        - parameter title: The title of the action sheet.
        - parameter message: The message content of the action sheet.
    */
    public func showActionSheet(_ title: String?, message: String?) {
        showActionSheet(title, message: message, cancelButtonTitle: "OK")
    }

    /**
        Present an action sheet with a title, a message and a cancel/dismiss button with a title of your choice.

        - parameter title: The title of the action sheet.
        - parameter message: The message content of the action sheet.
        - parameter cancelButtonTitle: The title of the cancel button of the action sheet.
    */
    public func showActionSheet(_ title: String?, message: String?, cancelButtonTitle: String) {
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .cancel, handler: nil)
        showActionSheet(title, message: message, alertActions: [cancelAction])
    }

    /**
        Present an action sheet with a title, a message and an array of handler actions.

        - parameter title: The title of the action sheet.
        - parameter message: The message content of the action sheet.
        - parameter alertActions: An array of alert actions in UIAlertAction class.
    */
    public func showActionSheet(_ title: String?, message: String?, alertActions: [UIAlertAction]) {
        showAlert(title, message: message, preferredStyle: .actionSheet, alertActions: alertActions)
    }

    // MARK: - Common Methods

    /**
        Present an alert or action sheet with a title, a message and an array of handler actions.

        - parameter title: The title of the alert/action sheet.
        - parameter message: The message content of the alert/action sheet.
        - parameter alertActions: An array of alert action in UIAlertAction class.
    */
    public func showAlert(_ title: String?, message: String?, preferredStyle: UIAlertController.Style, alertActions: [UIAlertAction]) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)

        for alertAction in alertActions {
            alertController.addAction(alertAction)
        }

        self.present(alertController, animated: true, completion: nil)
    }
}
