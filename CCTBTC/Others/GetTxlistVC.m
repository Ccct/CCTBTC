//
//  GetTxlistVC.m
//  CCTBTC
//
//  Created by Helios on 2019/2/20.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "GetTxlistVC.h"
#import <CCTBTCLib/CCTBTCLib.h>

@interface GetTxlistVC ()

@property (weak, nonatomic) IBOutlet UITextField *addText;

@end

@implementation GetTxlistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"交易记录";
}

- (IBAction)btnAction:(id)sender {
    
    /**
     完整的 CCTBTCLib 库代码，请加我的QQ：705356202
     **/
    
    _addText.text = @"1B4UDft3TyRhoygLnMyyoFrbSkjpCD8vEJ";
    
    if(_addText.text.length == 0){
        return;
    }
    
    [CCTBTCLib getTxlistByAddress:_addText.text Network:mainnet Path:btcMainnet Page:0 resultBlock:^(NSArray *array, BOOL suc) {
        
        if(suc){
            NSLog(@"%@",array);
        }else{
            NSLog(@"查询失败");
        }
    }];
}

@end
