//
//  ViewController.h
//  PickerViewApp
//
//  Created by Gabriela Martinez on 6/26/13.
//  Copyright (c) 2013 Gabriela Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>{
    NSArray *rows;

}
- (IBAction)actionSelect:(id)sender;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;

@end
