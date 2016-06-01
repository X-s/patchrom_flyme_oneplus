.class public Lcom/oneplus/tuner/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;


# static fields
.field private static final CURRENT_CONTROLLER:I = 0x1

.field private static final CURRENT_CUSTOMER:I = 0x2

.field private static final CURRENT_FRAGMENT:Ljava/lang/String; = "current_fragment"

.field private static final CURRENT_MY_CONFIG:I = 0x3

.field private static mActivityInstance:Lcom/oneplus/tuner/MainActivity;


# instance fields
.field private mConfigsButton:Landroid/widget/Button;

.field private mControllButton:Landroid/widget/Button;

.field private mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

.field private mCustomButton:Landroid/widget/Button;

.field private mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

.field private mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

.field private mFt:Landroid/app/FragmentTransaction;

.field mIsNeedDoResume:Z

.field private mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

.field mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

.field private wManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mControllButton:Landroid/widget/Button;

    .line 48
    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomButton:Landroid/widget/Button;

    .line 49
    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mConfigsButton:Landroid/widget/Button;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MainActivity;->mIsNeedDoResume:Z

    .line 562
    new-instance v0, Lcom/oneplus/tuner/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity$8;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/MainActivity;)Lcom/oneplus/tuner/fragment/ControllerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MainActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/MainActivity;)Lcom/oneplus/tuner/fragment/CustomSettingsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MainActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/MainActivity;)Lcom/oneplus/tuner/fragment/MyConfigFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MainActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/MainActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/tuner/MainActivity;->doOnResume()V

    return-void
.end method

.method private doOnResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 533
    sget-wide v4, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 534
    iput-boolean v7, p0, Lcom/oneplus/tuner/MainActivity;->mIsNeedDoResume:Z

    .line 535
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/tuner/view/PersonalView;->updateLoginInfo(JJLjava/lang/String;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/tuner/MainActivity;->mIsNeedDoResume:Z

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->readUserInfoInDataBase()Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v0

    .line 538
    .local v0, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    if-eqz v0, :cond_2

    .line 539
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getLikednum()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getSharenum()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/tuner/view/PersonalView;->updateLoginInfo(JJLjava/lang/String;)V

    .line 542
    :cond_2
    iput-boolean v7, p0, Lcom/oneplus/tuner/MainActivity;->mIsNeedDoResume:Z

    goto :goto_0
.end method

.method public static getMainActivity()Lcom/oneplus/tuner/MainActivity;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oneplus/tuner/MainActivity;->mActivityInstance:Lcom/oneplus/tuner/MainActivity;

    return-object v0
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 553
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.tunerACTION_LOGIN_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 556
    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 560
    return-void
.end method


# virtual methods
.method public disableFlipper()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FlipperView;->preventTouchEvent()V

    .line 367
    return-void
.end method

.method public enableFlipper()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FlipperView;->acceptTouchEvent()V

    .line 372
    return-void
.end method

.method public getControllerFragment()Lcom/oneplus/tuner/fragment/ControllerFragment;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->wManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hideFlipper()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FlipperView;->isPullOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FlipperView;->closeDrawer()V

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingFlipper()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FlipperView;->isPullOut()Z

    move-result v0

    return v0
.end method

.method public isUserLogin()Z
    .locals 4

    .prologue
    .line 578
    sget-wide v0, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 295
    if-nez p3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    const-string v1, "earphone_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->updateCurrentHeadset(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->hideFlipper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    return-void

    .line 486
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->showController()V

    goto :goto_0

    .line 489
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->showCustomSettings()V

    goto :goto_0

    .line 492
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->showMyConfig()V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x7f0b01a4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClosed()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->acceptChildrenTouchEvent()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->acceptChildrenTouchEvent()V

    .line 347
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0b00fb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->setContentView(I)V

    .line 67
    const v1, 0x7f0b01a4

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mControllButton:Landroid/widget/Button;

    .line 68
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mControllButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0b01a5

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mCustomButton:Landroid/widget/Button;

    .line 70
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mCustomButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0b01a6

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mConfigsButton:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mConfigsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0b0085

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/widget/FlipperView;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 76
    .local v11, "fragmentContent":Landroid/view/View;
    const v1, 0x7f0b00fa

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/MainTitleBar;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    .line 77
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v1}, Lcom/oneplus/tuner/view/MainTitleBar;->hideSearchButton()V

    .line 78
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v1}, Lcom/oneplus/tuner/view/MainTitleBar;->showWaveBrandImage()V

    .line 79
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    const v2, 0x7f0c0674

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/view/MainTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v1, v11}, Lcom/oneplus/tuner/widget/FlipperView;->setContentView(Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/widget/FlipperView;->setOnFlipListener(Lcom/oneplus/tuner/widget/FlipperView$OnFlipListener;)V

    .line 83
    iput-object v3, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    .line 84
    iput-object v3, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    .line 85
    iput-object v3, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    .line 87
    const/4 v7, 0x1

    .line 89
    .local v7, "current":I
    if-eqz p1, :cond_0

    .line 90
    const-string v1, "current_fragment"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 93
    :cond_0
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getPermissionTipEnabled()Z

    move-result v9

    .line 94
    .local v9, "enabled":Z
    const-string v1, "tuner_permission_network"

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "allow":Z
    invoke-static {}, Lcom/oneplus/tuner/widget/FloatWindow;->needInit()V

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    .line 109
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 111
    new-instance v1, Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-direct {v1}, Lcom/oneplus/tuner/fragment/ControllerFragment;-><init>()V

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    .line 112
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v1, p0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->setActivity(Lcom/oneplus/tuner/MainActivity;)V

    .line 113
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 115
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 117
    if-eqz v9, :cond_4

    .line 119
    invoke-static {p0}, Lcom/oneplus/tuner/utillty/DialogUtility;->createPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v8

    .line 120
    .local v8, "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/oneplus/tuner/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MainActivity$1;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 144
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 177
    .end local v8    # "dialog":Landroid/app/Dialog;
    :cond_1
    :goto_0
    if-ne v7, v4, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->showController()V

    .line 185
    :cond_2
    :goto_1
    new-instance v1, Lcom/oneplus/tuner/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MainActivity$3;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    invoke-static {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 195
    const v1, 0x7f0b014b

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/tuner/view/PersonalView;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    .line 229
    invoke-direct {p0}, Lcom/oneplus/tuner/MainActivity;->registerReceivers()V

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->isUserLogin()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->readUserInfoInDataBase()Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v10

    .line 233
    .local v10, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    if-eqz v10, :cond_3

    .line 234
    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mPersonalView:Lcom/oneplus/tuner/view/PersonalView;

    invoke-virtual {v10}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getLikednum()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v10}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getSharenum()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v10}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/tuner/view/PersonalView;->updateLoginInfo(JJLjava/lang/String;)V

    .line 249
    .end local v10    # "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :cond_3
    :goto_2
    sput-object p0, Lcom/oneplus/tuner/MainActivity;->mActivityInstance:Lcom/oneplus/tuner/MainActivity;

    .line 251
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->wManager:Landroid/view/WindowManager;

    .line 253
    return-void

    .line 146
    :cond_4
    if-nez v0, :cond_1

    .line 148
    invoke-static {p0}, Lcom/oneplus/tuner/utillty/DialogUtility;->createRejectPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v8

    .line 149
    .restart local v8    # "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/oneplus/tuner/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MainActivity$2;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 179
    .end local v8    # "dialog":Landroid/app/Dialog;
    :cond_5
    const/4 v1, 0x2

    if-ne v7, v1, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->showCustomSettings()V

    goto :goto_1

    .line 181
    :cond_6
    const/4 v1, 0x3

    if-ne v7, v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->showMyConfig()V

    goto :goto_1

    .line 238
    :cond_7
    new-instance v1, Lcom/oneplus/tuner/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MainActivity$4;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    invoke-static {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-static {}, Lcom/oneplus/tuner/widget/FloatWindow;->needInit()V

    .line 504
    invoke-direct {p0}, Lcom/oneplus/tuner/MainActivity;->unregisterReceivers()V

    .line 505
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/CommunityApplication;

    .line 509
    .local v0, "app":Lcom/oppo/tribune/CommunityApplication;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->clearSoundEffectDataChangeListeners()V

    .line 511
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->unregisterSoundEffectUsedDataChangeListener()V

    .line 513
    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    .line 514
    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    .line 515
    iput-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    .line 520
    sput-object v1, Lcom/oneplus/tuner/MainActivity;->mActivityInstance:Lcom/oneplus/tuner/MainActivity;

    .line 522
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 523
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOpened()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->preventChildrenTouchEvent()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->preventChildrenTouchEvent()V

    .line 358
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 528
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 529
    invoke-direct {p0}, Lcom/oneplus/tuner/MainActivity;->doOnResume()V

    .line 530
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "current_fragment"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/CustomSettingsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "current_fragment"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const-string v0, "current_fragment"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    :cond_2
    return-void
.end method

.method public readUserInfoInDataBase()Lcom/oppo/tribune/protobuf/info/UserInfo;
    .locals 4

    .prologue
    .line 547
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;
    sget-wide v2, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/provider/forum/dao/SignInUserDao;->query(J)Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v1

    .line 549
    .local v1, "entity":Lcom/oppo/tribune/protobuf/info/UserInfo;
    return-object v1
.end method

.method public showController()V
    .locals 4

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    .line 416
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-direct {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    .line 418
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0, p0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->setActivity(Lcom/oneplus/tuner/MainActivity;)V

    .line 419
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    const v1, 0x7f0b00fb

    iget-object v2, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/ControllerFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 427
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/MainTitleBar;->showSearchButton()V

    .line 428
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/MainTitleBar;->hideWaveBrandImage()V

    .line 429
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    const v1, 0x7f0c0673

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/MainTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 432
    new-instance v0, Lcom/oneplus/tuner/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity$6;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    const-wide/16 v2, 0x50

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 444
    return-void
.end method

.method public showCustomSettings()V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    .line 377
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-direct {v0}, Lcom/oneplus/tuner/fragment/CustomSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/CustomSettingsFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 395
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/MainTitleBar;->hideSearchButton()V

    .line 396
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/MainTitleBar;->showWaveBrandImage()V

    .line 397
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    const v1, 0x7f0c0674

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/MainTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 400
    new-instance v0, Lcom/oneplus/tuner/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity$5;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    const-wide/16 v2, 0x50

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 411
    return-void
.end method

.method public showMyConfig()V
    .locals 4

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    .line 449
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-direct {v0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    .line 451
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0, p0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->setActivity(Lcom/oneplus/tuner/MainActivity;)V

    .line 452
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->registerSoundEffectDataChangeListener(Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;)V

    .line 454
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    const v1, 0x7f0b00fb

    iget-object v2, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/fragment/MyConfigFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mCustomSetting:Lcom/oneplus/tuner/fragment/CustomSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/oneplus/tuner/MainActivity;->mMyConfigFragment:Lcom/oneplus/tuner/fragment/MyConfigFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 462
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/MainTitleBar;->hideSearchButton()V

    .line 463
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    invoke-virtual {v0}, Lcom/oneplus/tuner/view/MainTitleBar;->hideWaveBrandImage()V

    .line 464
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mTitleBar:Lcom/oneplus/tuner/view/MainTitleBar;

    const v1, 0x7f0c0675

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/MainTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFt:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 467
    new-instance v0, Lcom/oneplus/tuner/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity$7;-><init>(Lcom/oneplus/tuner/MainActivity;)V

    const-wide/16 v2, 0x50

    invoke-static {v0, v2, v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V

    .line 479
    return-void
.end method

.method public startSearchActivity()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 291
    return-void
.end method

.method public switchFilpper()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity;->mFlipper:Lcom/oneplus/tuner/widget/FlipperView;

    invoke-virtual {v0}, Lcom/oneplus/tuner/widget/FlipperView;->slidingDrawer()V

    .line 281
    return-void
.end method
