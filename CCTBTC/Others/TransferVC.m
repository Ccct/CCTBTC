//
//  TransferVC.m
//  CCTBTC
//
//  Created by Helios on 2019/2/20.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "TransferVC.h"
#import <CCTBTCLib/CCTBTCLib.h>

@interface TransferVC ()

@property (weak, nonatomic) IBOutlet UITextField *pkText;

@property (weak, nonatomic) IBOutlet UITextField *payAddText;

@property (weak, nonatomic) IBOutlet UITextField *collectAddText;

@property (weak, nonatomic) IBOutlet UITextField *MoneyT;

@property (weak, nonatomic) IBOutlet UITextField *feeT;

@end

@implementation TransferVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"转账";
}

- (IBAction)btnAction:(id)sender {
    
    /**
     完整的 CCTBTCLib 库代码，请加我的QQ：705356202
     **/
    
    if(_pkText.text.length == 0 || _payAddText.text.length == 0 || _collectAddText.text.length == 0 ||
       _MoneyT.text.length == 0 || _feeT.text.length == 0){
        return;
    }
    
    [CCTBTCLib TransferByhNetwok:mainnet
                            Path:btcMainnet
                      PayAddress:_payAddText.text
                  collectAddress:_collectAddText.text
                           Money:_MoneyT.text
                      PrivateKey:_pkText.text
                             Fee:[_feeT.text integerValue]
                     resultBlock:^(NSString *hashStr, BOOL suc)
    {
        
         if(suc){
             NSLog(@"转账成功 哈希值：%@",hashStr);
         }else{
             NSLog(@"转账失败");
         }
    }];
}

@end
