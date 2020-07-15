//
//  CreateVC.m
//  CCTBTC
//
//  Created by Helios on 2019/2/20.
//  Copyright © 2019 Helios. All rights reserved.
//

#import "CreateVC.h"
#import <CCTBTCLib/CCTBTCLib.h>

@interface CreateVC ()

@property (weak, nonatomic) IBOutlet UITextView *textV;

@end

@implementation CreateVC

- (IBAction)btcAction:(id)sender {
    
    /**
     完整的 CCTBTCLib 库代码，请加我的QQ：705356202
     **/
    
    [CCTBTCLib createWalletWithNewwork:mainnet Path:btcMainnet password:@"12345678" resultBlock:^(NSString *private, NSString *address, NSString *words) {
        
        self.textV.text = [NSString stringWithFormat:@"【地址】%@ \n\n 【私钥】%@ \n\n 【助记词】%@ \n\n",address,private,words];
        
        NSLog(@"%@ \n",address);
        NSLog(@"%@ \n",private);
        NSLog(@"%@ \n",words);
    }];
}

@end


