//
//  ViewController.m
//  TicTacToeHelpFM
//
//  Created by Florin Alan Muscutar on 2/28/24.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *theButtons;
@property (weak, nonatomic) IBOutlet UILabel *WinningText;
@property (weak, nonatomic) UILabel *Player;
@property (assign, nonatomic) int numberAS;

 
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imageXFM=[UIImage imageNamed:@"theXFM"];
    _imageEmptyFM=[UIImage imageNamed:@"emptyFM"];
    _imageOAS=[UIImage imageNamed:@"theOAS"];
    _turn=true;
    _WinningText.hidden=YES;
    _Player.text = @"X";
    _numberAS=0;

    
    
    //you can setup the buttons with partular images here
   // UIButton *oneOfThem=_theButtons[0];

    //[oneOfThem setImage:_imageXFM forState:UIControlStateNormal];
}
- (IBAction)buttonPressed:(UIButton *)sender {
    
    //[sender setImage:_imageX forState:UIControlStateNormal];
    
    
    
    for (UIButton *currentButton in _theButtons)
        
    {
        
        //example of a for loop that takes each button from the collection/array of //buttons
        
        if (sender==currentButton && _turn)
            
        {
            {
                [currentButton setImage:_imageXFM forState:UIControlStateNormal];
                currentButton.enabled=NO;
                _turn=false;
                _Player.text = @"O";
                _numberAS++;
                [self CheckWinner];
                
                
            }
            
            
            //make sure every button is dragged with control over the collection, not just the first one
            
            
        }
        else if (sender==currentButton && _turn==false){
            [currentButton setImage:_imageOAS forState:UIControlStateNormal];
            currentButton.enabled=NO;
            _turn=true;
            _Player.text = @"X";
            _numberAS++;
            [self CheckWinner];
            
        }
        
        
    }
        
    }
    
    /*
     
     UIButton *oneButton=(UIButton *) [_theButtons objectAtIndex:0];
     
     [oneButton setImage:_imageX forState:UIControlStateNormal];
     
     */
    
    
-(void) ButtonDisabler{
    UIButton *Button0 = _theButtons[0];
    UIButton *Button1 = _theButtons[1];
    UIButton *Button2 = _theButtons[2];
    UIButton *Button3 = _theButtons[3];
    UIButton *Button4 = _theButtons[4];
    UIButton *Button5 = _theButtons[5];
    UIButton *Button6 = _theButtons[6];
    UIButton *Button7 = _theButtons[7];
    UIButton *Button8 = _theButtons[8];
    
    Button0.enabled=NO;
    Button1.enabled=NO;
    Button2.enabled=NO;
    Button3.enabled=NO;
    Button4.enabled=NO;
    Button5.enabled=NO;
    Button6.enabled=NO;
    Button7.enabled=NO;
    Button8.enabled=NO;
    
    
}


- (Boolean)CheckWinner{
    
    

    
    UIButton *Button0 = _theButtons[0];
    UIButton *Button1 = _theButtons[1];
    UIButton *Button2 = _theButtons[2];
    UIButton *Button3 = _theButtons[3];
    UIButton *Button4 = _theButtons[4];
    UIButton *Button5 = _theButtons[5];
    UIButton *Button6 = _theButtons[6];
    UIButton *Button7 = _theButtons[7];
    UIButton *Button8 = _theButtons[8];
    
    
    if([Button0.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button1.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] && [Button2.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
        _WinningText.hidden=NO;
        _WinningText.text= @"O Won!";
        [self ButtonDisabler];
        return true;
    };
    if([Button3.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] && [Button5.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
        _WinningText.hidden=NO;
        _WinningText.text= @"O Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button6.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button7.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] && [Button8.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
           _WinningText.hidden=NO;
           _WinningText.text= @"O Won!";
           [self ButtonDisabler];
           return true;
    };
    if([Button0.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button3.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] && [Button6.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
           _WinningText.hidden=NO;
           _WinningText.text= @"O Won!";
           [self ButtonDisabler];
           return true;
    };
    if([Button1.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button7.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] && [Button4.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
           _WinningText.hidden=NO;
           _WinningText.text= @"O Won!";
           [self ButtonDisabler];
           return true;
    };
    if([Button2.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button5.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button8.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
           _WinningText.hidden=NO;
           _WinningText.text= @"O Won!";
           [self ButtonDisabler];
           return true;
    };
    if([Button0.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button8.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
           _WinningText.hidden=NO;
           _WinningText.text= @"O Won!";
           [self ButtonDisabler];
           return true;
    };
    if([Button2.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theOAS"]] &&
       [Button6.currentImage isEqual:[UIImage imageNamed:@"theOAS"]])
       {
           _WinningText.hidden=NO;
           _WinningText.text= @"O Won!";
           [self ButtonDisabler];
           return true;
    };
    if([Button0.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button1.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button2.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button3.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button5.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button6.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button7.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button8.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button0.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button3.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button6.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button1.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button7.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button2.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button5.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button8.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button0.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button8.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if([Button2.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button4.currentImage isEqual:[UIImage imageNamed:@"theXFM"]] &&
       [Button6.currentImage isEqual:[UIImage imageNamed:@"theXFM"]])
       {
        _WinningText.hidden=NO;
           _WinningText.text= @"X Won!";
           [self ButtonDisabler];
        return true;
    };
    if (_numberAS == 9){
        _WinningText.text=@"Nobody won!";
        
            
            
};
    
    return false;
    
    
}

@end
