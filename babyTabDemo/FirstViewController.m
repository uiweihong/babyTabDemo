//
//  FirstViewController.m
//  babyTabDemo
//
//  Created by sonny on 16/10/27.
//  Copyright © 2016年 sonny. All rights reserved.
//

#import "FirstViewController.h"


#import "FRFirstBaseTableViewCell.h"

@interface FirstViewController ()


@property (nonatomic, strong) UITableView *tableView; // .
@property (nonatomic, copy) NSArray *cellNameArray; // .
@property (nonatomic, copy) NSArray *dataArray; // .

@end

@implementation FirstViewController

- (void)registerCellClass {
    
    self.cellNameArray = @[@"FRFirstHeaderTableViewCell",@"FRFirstListTableViewCell",@"FRFirstListTableViewCell"];
    
    for (NSString *name in self.cellNameArray) {
        [self.tableView registerClass:NSClassFromString(name) forCellReuseIdentifier:name];
    }
    
    
    
    self.dataArray = @[@{@"title" : @"头像"},
                       @{@"title" : @"昵称", @"tip" : @"我是用户"},
                       @{@"title" : @"手机号", @"tip" : @"zwh@gmail.com"}];
    
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController.title = @"个人信息";
    
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 90;
    //self.tableView.rowHeight = UITableViewAutomaticDimension;// iOS 8 默认为此值
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
    [self registerCellClass];
    
    weakSelf(wSelf);
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(wSelf.view.top);
        make.left.equalTo(wSelf.view.left);
        make.right.equalTo(wSelf.view.right);
        make.bottom.equalTo(wSelf.view.bottom);
    }];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FRFirstBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self.cellNameArray objectAtIndex:indexPath.row]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.dic = [self.dataArray objectAtIndex:indexPath.row];
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
