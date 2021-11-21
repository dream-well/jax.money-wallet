// Copyright SIX DAY LLC. All rights reserved.

import UIKit

extension UINavigationController {
    //Remove after iOS 11.2 will patch this bug.
    func applyTintAdjustment() {
        navigationBar.tintAdjustmentMode = .normal
        navigationBar.tintAdjustmentMode = .automatic
        //cryptobit
        navigationBar.backgroundColor = UIColor(red: 22, green: 33, blue: 114, alpha: 1.0)
        navigationBar.barTintColor = UIColor.white
    }

    public func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        pushViewController(viewController, animated: animated)

        guard animated, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async {
                completion()
            }
            return
        }

        coordinator.animate(alongsideTransition: nil) { _ in
            completion()
        }
    }

    func popViewController(animated: Bool, completion: @escaping () -> Void) {
        popViewController(animated: animated)

        guard animated, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async {
                completion()
            }
            return
        }

        coordinator.animate(alongsideTransition: nil) { _ in
            completion()
        }
    }

}
