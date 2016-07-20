//
//  ShowViewController.m
//
//  Created by DanaChu on 16/7/20.
//  Copyright © 2016年 DanaChu. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "ShowViewController.h"
#import "DCHUD/DCHUD.h"

@implementation ShowViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.tableFooterView = [UIView new];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    switch (self.which) {
        case 1:
            [DCHUD dc_showSuccessMessage:@"登录成功!" hideAfter:3.0];
            break;
        case 2:
            [DCHUD dc_showErrorMessage:@"参数错误!" hideAfter:3.0];
            break;
        case 3:
            [DCHUD dc_showIndeterminateHUDWithTitleType:DCHUDTitleTypeLoading hideAfter:3.0];
            break;
        case 4:
            [DCHUD dc_showMessage:@"你好，我只是一条普通的消息." hideAfter:3.0];
            break;
        case 5:
            [DCHUD dc_showSuccessMessage:@"登录成功!" hideAfter:3.0];
            break;
        case 6:
            [DCHUD dc_showErrorMessage:@"参数错误!" userInterfaceEnable:YES];
            break;
            
        default:
            break;
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"Test User Interaction Enable - %ld", indexPath.row];
    return cell;
}



@end
