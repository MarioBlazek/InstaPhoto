//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by Marek on 18/04/15.
//  Copyright (c) 2015 Marek. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 480);
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MB"]];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    imageView.frame = CGRectMake(20, 20, 100, 114);
    //[self.view addSubview:imageView];
    [self.scrollView addSubview:imageView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
    nameLabel.text = @"Name: Mario Blazek";
    //[self.view addSubview:nameLabel];
    [self.scrollView addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
    cityLabel.text = @"From: Zagreb";
    //[self.view addSubview:cityLabel];
    [self.scrollView addSubview:cityLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at nibh mi. In et ligula ut elit posuere tristique ut non arcu. Proin id leo in enim fermentum mollis. Nam ullamcorper felis id libero rutrum, id varius sem pulvinar. Etiam quis dictum odio. Suspendisse condimentum tortor eu nibh mattis feugiat vitae vitae eros. Nullam facilisis ut eros nec tempus. Nunc tortor nisl, ultrices eu dui at, maximus suscipit est. Suspendisse commodo mi pellentesque purus gravida, vel hendrerit ex accumsan";
    //[self.view addSubview:biography];
    [self.scrollView addSubview:biography];
    
    UILabel *memberSince = [[UILabel alloc] initWithFrame:CGRectMake(20, 440, 280, 40)];
    memberSince.text = @"October 1989.";
    //[self.view addSubview:memberSince];
    [self.scrollView addSubview:memberSince];
    
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    }
    
    return self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
