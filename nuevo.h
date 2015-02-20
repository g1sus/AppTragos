//
//  nuevo.h
//  tragos
//
//  Created by Jesus Antonio Hernandez Mendez on 19/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface nuevo : UIViewController

//TextFields
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UITextField *txtDescripcion;
@property (strong, nonatomic) IBOutlet UITextField *txtLatitud;
@property (strong, nonatomic) IBOutlet UITextField *txtLongitud;

//Button
- (IBAction)btnAgregar:(id)sender;


@end
