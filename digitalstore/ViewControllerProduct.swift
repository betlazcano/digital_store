//
//  ViewControllerProduct.swift
//  digitalstore
//
//  Created by Beatriz on 25/07/21.
//
import UIKit


class ViewControllerProduct: UIViewController{

    @IBOutlet weak var sliderCollectionView: UICollectionView!
    @IBOutlet weak var pageView: UIPageControl!
    
    var imgArr = [ UIImage(named:"cartera"),UIImage(named:"cartera"),UIImage(named:"cartera")]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

    extension ViewControllerProduct: UICollectionViewDelegate, UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imgArr.count
        }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            if let vc = cell.viewWithTag(111) as? UIImageView{
                vc.image = imgArr[indexPath.row]
            } else if let ab = cell.viewWithTag(222) as? UIPageControl{
                ab.currentPage = indexPath.row
            }
            return cell
        }
        
    }
    
    extension ViewControllerProduct: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                                UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                                UICollectionViewLayout, sizeForItemat indexPath: IndexPath) -> CGSize{
            let size = sliderCollectionView.frame.size
            return CGSize(width: size.width, height: size.height)
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                                UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
            return 0.0
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                                UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
            return 0.0
        }
    }
    
    

