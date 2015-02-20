//
//  nuevo.m
//  tragos
//
//  Created by Jesus Antonio Hernandez Mendez on 19/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "nuevo.h"
#import <Parse/Parse.h>

@interface nuevo ()

@end

@implementation nuevo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title =@"Agregar Tus Lugares Favoritos";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)btnAgregar:(id)sender {
    //Agregar datos en parse desde nuestro vista
    
    if ([self.txtNombre.text isEqualToString:@""] || [self.txtDescripcion.text isEqualToString:@""] || [self.txtLatitud.text isEqualToString:@""] || [self.txtLongitud.text isEqualToString:@""]) {
        
        NSLog(@"Campos Obligatorios");
        
    }else{
        
        PFObject *objTemp = [PFObject objectWithClassName:@"tragos"];
        objTemp[@"nombre"] = self.txtNombre.text;
        objTemp[@"descripcion"] = self.txtDescripcion.text;
        objTemp[@"latitud"] = self.txtLatitud.text;
        objTemp[@"longitud"] = self.txtLongitud.text;
        
        [objTemp saveInBackground];
        
        self.txtNombre.text = nil;
        self.txtDescripcion.text = nil;
        self.txtLatitud.text = nil;
        self.txtLongitud.text = nil;
        
        [self performSegueWithIdentifier:@"BackHomeNew" sender:self];
        
    }
}
@end
