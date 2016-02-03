//
//  TicTacToe.m
//  TicTacToe
//
//  Created by Developer8 on 2/2/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import "TicTacToe.h"

@implementation TicTacToe

-(void) startGame{
    turn=0;
 ticTacToeStatus = [[NSMutableArray alloc] initWithObjects:@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",@"0",nil ];
}
-(NSString *) clickPosition:(int)positionValue{
    
    if( [[ticTacToeStatus objectAtIndex:positionValue] isEqual:@"0"]){
        if(turn==0)
        {
            ticTacToeStatus[positionValue]=@"x";
            turn=1;
        }
        else
        {
            ticTacToeStatus[positionValue]=@"o";
            turn=0;
        }
    }
    else
    {
       return [NSString stringWithFormat:@"Please Select Empty Block!"];
    }
    return [NSString stringWithFormat:@"Success"];
}
-(int) userTurn{
    return turn;
}
-(int) winStatus{
    //row match condition
    for(int i=0;i<3;i++)
    {
        if(([ticTacToeStatus objectAtIndex:i*3] == [ticTacToeStatus objectAtIndex:i*3+1])&&([ticTacToeStatus objectAtIndex:i*3+1] == [ticTacToeStatus objectAtIndex:i*3+2]) && (![[ticTacToeStatus objectAtIndex:i*3] isEqual:@"0"]))
        {
            return turn;
        }
    }
     //column match condition
    for(int i=0;i<3;i++)
    {
        if(([ticTacToeStatus objectAtIndex:i] == [ticTacToeStatus objectAtIndex:i+3])&&([ticTacToeStatus objectAtIndex:i+3] == [ticTacToeStatus objectAtIndex:i+6]) &&(![[ticTacToeStatus objectAtIndex:i+3] isEqual:@"0"]))
        {
            return turn;
        }
    }
    //diagonal check
    if(([ticTacToeStatus objectAtIndex:0] == [ticTacToeStatus objectAtIndex:4])&&([ticTacToeStatus objectAtIndex:4] == [ticTacToeStatus objectAtIndex:8]) &&(![[ticTacToeStatus objectAtIndex:0] isEqual:@"0"]))
    {
        return turn;
    }
    else if(([ticTacToeStatus objectAtIndex:2] == [ticTacToeStatus objectAtIndex:4])&&([ticTacToeStatus objectAtIndex:4] == [ticTacToeStatus objectAtIndex:6]) && (![[ticTacToeStatus objectAtIndex:2] isEqual:@"0"]))
    {
        return turn;
    }
    for(int i=0;i<9;i++){
        if([[ticTacToeStatus objectAtIndex:i] isEqual:@"0"]){
            return 2;
        }
    }
    return 3;
}
@end
