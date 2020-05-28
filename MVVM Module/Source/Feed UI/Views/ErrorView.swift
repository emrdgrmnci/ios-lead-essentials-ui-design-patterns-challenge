//
//  Copyright © 2019 Essential Developer. All rights reserved.
//

import UIKit

public final class ErrorView: UIView {
	@IBOutlet private var errorLabel: UILabel!
	
	public var message: String? {
		get { return isVisible ? errorLabel.text : nil }
	}
	
	private var isVisible: Bool {
		return alpha > 0
	}
	
	public override func awakeFromNib() {
		super.awakeFromNib()
		
		errorLabel.text = nil
		alpha = 0
	}
	
	func show(message: String) {
		self.errorLabel.text = message
		
		UIView.animate(withDuration: 0.25) {
			self.alpha = 1
		}
	}
	
	@IBAction func hideMessage() {
		UIView.animate(
			withDuration: 0.25,
			animations: { self.alpha = 0 },
			completion: { completed in
				if completed { self.errorLabel.text = nil }
		})
	}
}
