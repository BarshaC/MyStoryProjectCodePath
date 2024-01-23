//
//  ViewController.swift
//  MyStory
//
//  Created by Barsha Chaudhary on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coolStoryButton: UIButton!
    @IBOutlet weak var weaknessButton: UIButton!
    @IBOutlet weak var weightLiftButton: UIButton!
    
    // Assuming you have instances of ContextItem for each button
    let contextItem1 = ContextItem(subImage: UIImage(named: "backstory")!, description: "So, there I was, just a rich kid with a cool inheritance, until one night, things went south – watched my parents turn into crime's latest victims. Talk about a mood killer. But did I wallow in self-pity? Nah, I decided to globe-trot and pick up ninja skills. Because why not? Fast forward, I'm back in Gotham with an IQ that rivals Einstein, a willpower that could move mountains, and a gadget collection that'd make James Bond jealous. By night, I'm Batman, scaring the living daylights out of bad guys in dark alleys. By day, I'm just your average billionaire, playing philanthropist. Resilience, transformation, and a vow to keep Gotham shady – that's my cool back story. Now, where did I put that Bat-Snack?")
    let contextItem2 = ContextItem(subImage: UIImage(named: "batmanWeakness")!, description: "So, you're curious about my weaknesses, huh? Well, despite the whole Dark Knight vibe, even Batman has his soft spots. First off, I'm not rocking any superpowers – no flying, no laser vision, just some cool gadgets and a cape. Witnessing my folks meeting a tragic end left a mark, and let's face it, emotional baggage is my constant companion. Also, I've got this knack for making elaborate contingency plans for every possible scenario, which, I admit, might raise an eyebrow or two among my superhero pals. But hey, being a billionaire playboy by day and a crime-fighting vigilante by night can get a bit taxing on the nerves. Who said saving Gotham was all Batarangs and Batmobiles? Sometimes, my weakness is just the lack of a good Bat-therapist.")
    let contextItem3 = ContextItem(subImage: UIImage(named: "batmanWeight")!, description: "Ah, the age-old question: How much can I lift? Well, let's just say I've got biceps that would make a gorilla rethink its life choices. I mean, have you seen the Bat-Guns? They're not just for show. I lift things that make regular weightlifters question their gym memberships. Gotham's villains aren't the only ones getting a workout – lifting the Batmobile is just part of my morning routine. I once bench-pressed my own standards, and trust me, those are pretty heavy. So, how much can I lift? Enough to make Superman check his own gym playlist. But hey, it's not about the weights; it's about saving Gotham with style – and killer pecs.")


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundCorners(for: coolStoryButton)
        roundCorners(for: weaknessButton)
        roundCorners(for: weightLiftButton)
    }
    
    func roundCorners(for button: UIButton) {
        button.layer.cornerRadius = 10 // Adjust the corner radius as needed
        button.layer.masksToBounds = true // Ensure the corners are rounded
    }
    
    @IBAction func coolStory(_ sender: Any) {
//        handleAction(with: contextItem1, action: "Cool Story")
    }


    @IBAction func weakness(_ sender: Any) {
//        handleAction(with: contextItem2, action: "Weakness")
    }


    @IBAction func weightLift(_ sender: Any) {
//        handleAction(with: contextItem3, action: "Weight Lift")
    }
    
    func handleAction(with contextItem: ContextItem, action: String) {
        print("My \(action)!")
        performSegue(withIdentifier: "\(action)Detail", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier,
            let action = identifier.components(separatedBy: "Detail").first,
            let detailVC = segue.destination as? DetailViewController {
                switch identifier {
                case "Cool BackStoryDetail":
                    detailVC.contextItem = contextItem1
                case "Only WeaknessDetail":
                    detailVC.contextItem = contextItem2
                case "How much can I Lift?Detail":
                    detailVC.contextItem = contextItem3
                default:
                    break
                }
            let backButton = UIBarButtonItem()
            backButton.title = "My " + action
            navigationItem.backBarButtonItem = backButton
            }
        }
    
}


