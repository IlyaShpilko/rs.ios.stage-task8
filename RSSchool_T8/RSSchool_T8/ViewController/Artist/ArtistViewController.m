//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Ilya Shpilko on 7/15/21.
//

#import "ArtistViewController.h"
#import "RSSchool_T8-Swift.h"
#import "BezierPath.h"

@interface ArtistViewController ()

@property (nonatomic, strong) Drawings *drawings;

@end

@implementation ArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Artist";
    
    // View
    // TODO: Не нравится бордер у канвас
    BezierPath *canvas = [[BezierPath alloc] init];
    canvas.frame = CGRectMake(38, 104, 300, 300);
    canvas.layer.borderWidth = 8;
    canvas.layer.cornerRadius = 8;
    canvas.layer.borderColor = [UIColor colorWithRed:0.0 green:0.7 blue:1.0 alpha:0.25].CGColor;
    [self.view addSubview:canvas];
    
    // TODO: Шрифты и размеры для кнопок, таргеты

    // MARK: -Buttons-
    // UIBarButtonItem
    UIBarButtonItem *drawingsItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(drawingsTapped:)];
    [drawingsItem setTintColor:[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1.0]];
    self.navigationItem.rightBarButtonItem = drawingsItem;

    // Open Palette button
    UIButton *openPalette = [UIButton buttonWithType:UIButtonTypeSystem];
    openPalette.frame = CGRectMake(20.0, 454.0, 163.0, 32.0);
    openPalette.layer.borderWidth = 2;
    openPalette.layer.borderColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    openPalette.layer.cornerRadius = 10;
    [openPalette setTitle:@"Open Palette" forState:UIControlStateNormal];
    [openPalette setTintColor:[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1.0]];
    openPalette.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    [self.view addSubview:openPalette];
    
    // Draw button
    UIButton *draw = [UIButton buttonWithType:UIButtonTypeSystem];
    draw.frame = CGRectMake(243.0, 454.0, 91.0, 32.0);
    draw.layer.borderWidth = 2;
    draw.layer.borderColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    draw.layer.cornerRadius = 10;
    [draw setTitle:@"Draw" forState:UIControlStateNormal];
    [draw setTintColor:[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1.0]];
    draw.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    [self.view addSubview:draw];
    
    // Open timer button
    UIButton *openTimer = [UIButton buttonWithType:UIButtonTypeSystem];
    openTimer.frame = CGRectMake(20.0, 506.0, 151.0, 32.0);
    openTimer.layer.borderWidth = 2;
    openTimer.layer.borderColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    openTimer.layer.cornerRadius = 10;
    [openTimer setTitle:@"Open Timer" forState:UIControlStateNormal];
    [openTimer setTintColor:[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1.0]];
    openTimer.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    [self.view addSubview:openTimer];
    
    // Share button
    UIButton *share = [UIButton buttonWithType:UIButtonTypeSystem];
    share.frame = CGRectMake(239.0, 506.0, 95.0, 32.0);
    share.layer.borderWidth = 2;
    share.layer.borderColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    share.layer.cornerRadius = 10;
    [share setTitle:@"Share" forState:UIControlStateNormal];
    [share setTintColor:[UIColor colorWithRed:0.13 green:0.69 blue:0.56 alpha:1.0]];
    [share addTarget:self action:@selector(shareImage:) forControlEvents:UIControlEventTouchUpInside];
    share.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    [self.view addSubview:share];
    
}

-(void) drawTapped: (UIButton *) sender {
}

// MARK: -Targets for buttons-
-(void)drawingsTapped:(id)sender {
    _drawings = [Drawings new];
    [self.navigationController pushViewController:_drawings animated:YES];
}

-(void)shareImage: (UIButton*) sender {
    // TODO: Передать картинку в массив
    UIActivityViewController *activiti = [[UIActivityViewController alloc] initWithActivityItems:@[] applicationActivities:nil];
    [self presentViewController:activiti animated:YES completion:nil];
}

@end
