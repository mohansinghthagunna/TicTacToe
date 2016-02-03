//
//  TicTacToe.h
//  TicTacToe
//
//  Created by Developer8 on 2/2/16.
//  Copyright © 2016 Developer8. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TicTacToe : NSObject
{
    NSMutableArray *ticTacToeStatus;
    int turn;
}
-(void) startGame;
-(NSString *) clickPosition:(int)positionValue;
-(int) winStatus;
-(int) userTurn;
@end
