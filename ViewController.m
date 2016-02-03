//
//  ViewController.m
//  TicTacToe
//
//  Created by Developer8 on 2/2/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "ViewController.h"
#import "TicTacToe.h"
@interface ViewController ()

@end
TicTacToe *tttObj;
@implementation ViewController
int result ;
- (void)viewDidLoad {
    [super viewDidLoad];
    tttObj = [TicTacToe new];
    [tttObj startGame];
    [self reset];
    result=2;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    

}

- (IBAction)actionClick:(UIButton *)sender {
 
    if(result!=0 && result!=1 && result!=3	){
    if([[tttObj clickPosition:(int)sender.tag]  isEqual:@"Success"] )
    {
        if([tttObj userTurn]==0)
        {
             _gameStatusLbl.text=@"Hey Its Player O Turn";
             [sender setBackgroundImage:[UIImage imageNamed:@"X.png"] forState:UIControlStateNormal];
        }
        else{
             _gameStatusLbl.text=@"Hey Its Player X Turn";
            [sender setBackgroundImage:[UIImage imageNamed:@"O.png"] forState:UIControlStateNormal];
        }
    }
    //ViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"storyBoardIdentifier"];
    //[self.navigationController pushViewController:newView animated:YES];
    result = [tttObj winStatus];
    if(result==0){
        _gameStatusLbl.text=@"Congratulation Player X win";
    }
    else if(result==1){
        _gameStatusLbl.text=@"Congratulation Player O win";
    }
    else if(result==3){
        _gameStatusLbl.text=@"Match Draw ";
    }
    }
}

- (IBAction)gameStart:(id)sender {
    tttObj = [TicTacToe new];
    [tttObj startGame];
     [self reset];
    
}
-(void) reset
{
    result=2;
    _gameStatusLbl.text=@"Hey Its Player O Turn";
    [_btn0 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn1 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn2 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn3 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn4 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn5 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn6 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn7 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [_btn8 setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];

}
@end
