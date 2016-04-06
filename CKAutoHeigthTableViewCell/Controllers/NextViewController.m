//
//  NextViewController.m
//  test
//
//  Created by  泛达 on 15/12/29.
//  Copyright © 2015年 FD. All rights reserved.

#import "NextViewController.h"
#import "NextViewControllerTableViewCell.h"

@interface NextViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *dataSources;

@end

@implementation NextViewController

#pragma mark - lifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];

    self.title = @"NextViewConroller";
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableView dataSource and delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataSources.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    NextViewControllerTableViewCell *cell = [NextViewControllerTableViewCell tableViewCellWithTableView:tableView indexPath:indexPath];
    cell.contentLabel.text = [[self.dataSources objectAtIndex:indexPath.row] description];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat offSet = tableView.contentOffset.y;
    NSLog(@"%lf",offSet);
    if (offSet<=0) {
        return;
    }
    CGRect oldRect = cell.frame;
    CGRect newRect = cell.frame;
    newRect.origin.x += 50;
    cell.frame = newRect;
    [UIView animateWithDuration:0.5 animations:^{
        cell.frame = oldRect;
    }];

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [tableView deselectRowAtIndexPath:indexPath animated:true];
    NextViewControllerTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UILabel *label = cell.contentLabel;
    [tableView beginUpdates];
    if (label.numberOfLines == 0) {
        label.numberOfLines = 1;
    }else{
        label.numberOfLines = 0;
    }
    [tableView endUpdates];
}

#pragma mark - scroll delegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    for (UITableViewCell *cell in _tableView.visibleCells) {
        /**
         *  你可以在这里对当前的cell进行一些操作
         *
         */
        
    }
}

#pragma mark setters and getters

- (UITableView *)tableView {

    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.estimatedRowHeight = 68.0;
        _tableView.rowHeight = UITableViewAutomaticDimension;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
    }
    return _tableView;
}

- (NSArray *)dataSources {

    if (!_dataSources) {
        _dataSources = @[@"简单点\n说话的方式简单点\n递进的情绪请省略\n你又不是个演员别设计那些情节\n没意见\n我只想看看你怎么圆\n你难过的太表面\n像没天赋的演员观众一眼能看见",@"没意见\n我只想看看你怎么圆\n你难过的太表面\n像没天赋的演员观众一眼能看见",@"故事，再现悲伤爱情前曲。MV讲述了薛之谦扮演的男主角和裴涩琪扮演的女主角曾是一对热恋中的情侣，但是彼此之间的摩擦日益增大，早已经无法回到过去的甜蜜。男主角知道女主角已经厌倦继续，现在也只是女主角在扮演过去的甜蜜。于是为了让女主角幸福，男主角扮演起狠心的角色。最终女主角拿起刀子发泄自己的情绪，男主角看着女主角离去，一滴眼泪顺着脸颊滴落；故事，再现悲伤爱情前曲。MV讲述了薛之谦扮演的男主角和裴涩琪扮演的女主角曾是一对热恋中的情侣，但是彼此之间的摩擦日益增大，早已经无法回到过去的甜蜜。男主角知道女主角已经厌倦继续，现在也只是女主角在扮演过去的甜蜜。于是为了让女主角幸福，男主角扮演起狠心的角色。最终女主角拿起刀子发泄自己的情绪，男主角看着女主角离去，一滴眼泪顺着脸颊滴落",@"故事，再现悲伤爱情前曲。MV讲述了薛之谦扮演的男主角和裴涩琪扮演的女主角曾是一对热恋中的情侣，但是彼此之间的摩擦日益增大，早已经无法回到过去的甜蜜。男主角知道女主角已经厌倦继续，现在也只是女主角在扮演过去的甜蜜。于是为了让女主角幸福，男主角扮演起狠心的角色。最终女主角拿起刀子发泄自己的情绪，男主角看着女主角离去，一滴眼泪顺着脸颊滴落",@"😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂",@"😗😗🤗\n😄😇😀😂",@"于是为了让女主角幸福，男主角扮演起狠心的角色。最终女主角拿起刀子发泄自己的情绪，男主角看着女主角离去，一滴眼泪顺着脸颊滴落；故事，再现悲伤爱情前曲。MV讲述了薛之谦扮演的男主角和裴涩琪扮演的女主角曾是一对热恋中的情侣，但是彼此之间的摩擦日益增大",@"😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗😄😇😀😂😗😗🤗\n😄😇😀😂",@"男主角看着女主角离去，一滴眼泪顺着脸颊滴落；故事，再现悲伤爱情前曲。MV讲述了薛之谦扮演的男主角和裴涩琪扮演的女主角曾是一对热恋中的情侣，但是彼此之间的摩擦日益增大，早已经无法回到过去的甜蜜。男主角知道女主角已经厌倦继续，现在也只是女主角在扮演过去的甜蜜。于是为了让女主角幸福，男主角扮演起狠心的角色。最终女主角拿起刀子发泄自己的情绪，男主角看着女主角离去，一滴眼泪顺着脸颊滴落"];
    }
    return _dataSources;
}
@end
