//
//  ViewController.m
//  DCHUD
//
//  Created by DanaChu on 16/7/20.
//  Copyright © 2016年 DanaChu. All rights reserved.
//

#import "ViewController.h"
#import "ShowViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *datas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _datas = [[NSMutableArray alloc]
              initWithArray:@[@"1.显示成功消息",
                              @"2.显示错误消息",
                              @"3.显示缓冲消息",
                              @"4.显示一般消息",
                              @"5.显示消息3秒后隐藏",
                              @"6.显示消息时可与下层交互",
                              ]];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.tableFooterView = [UIView new];
    [self.tableView reloadData];
    
}


#pragma mark - tbaleview datasource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.datas[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UIStoryboard *storyborad = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ShowViewController *VC = [storyborad instantiateViewControllerWithIdentifier:@"ShowViewControllerID"];
    VC.which = [self.datas[indexPath.row] substringWithRange:NSMakeRange(0, 1)].integerValue;
    [self.navigationController pushViewController:VC animated:YES];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"DCHUD";
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
