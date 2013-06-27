//
//  ViewController.m
//  PickerViewApp
//
//  Created by Gabriela Martinez on 6/26/13.
//  Copyright (c) 2013 Gabriela Martinez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    rows = [NSArray arrayWithObjects:@"Fila 1 " ,@"Fila 2", @"Fila 3", @"Fila 4", @"Fila 5",nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [rows count];

}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [rows objectAtIndex:row];
}
- (IBAction)actionSelect:(id)sender {
    [self closePicker:sender];
    
    
}

-(void)closePicker:(id)sender
{
    [UIView animateWithDuration:0.3 animations:^{
        self.pickerView.frame = CGRectMake(self.pickerView.frame.origin.x,
                                       self.pickerView.frame.origin.y+216, //Displays the view off the screen
                                       self.pickerView.frame.size.width,
                                       self.pickerView.frame.size.height);
        
        self.toolbar.frame = CGRectMake(self.toolbar.frame.origin.x,
                              self.toolbar.frame.origin.y+260, //Displays the view off the screen
                              self.toolbar.frame.size.width,
                              self.toolbar.frame.size.height);
        
    }];
}

-(IBAction)showPicker:(id)sender
{
    [UIView animateWithDuration:0.3 animations:^{
        _pickerView.frame = CGRectMake(_pickerView.frame.origin.x,
                                       107, //Displays the view a little past the
                                       //center ling of the screen
                                       _pickerView.frame.size.width,_pickerView.frame.size.height);
        
    }];
}


@end
