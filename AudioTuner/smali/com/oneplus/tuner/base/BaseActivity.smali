.class public abstract Lcom/oneplus/tuner/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;
.implements Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
.implements Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;,
        Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;,
        Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;,
        Lcom/oneplus/tuner/base/BaseActivity$HeadsetReceiver;,
        Lcom/oneplus/tuner/base/BaseActivity$MyInterface;
    }
.end annotation


# static fields
.field private static final BASE_URL_HTTPS:Ljava/lang/String; = "http://183.57.47.59:9999/user/"

.field private static final DELAY_TIME:J = 0xc8L

.field public static GET_USER_INFO:Ljava/lang/String; = null

.field protected static final MSG_LOGIN_FAIL:I = 0x2

.field protected static final MSG_LOGIN_SUCCESS:I = 0x1

.field protected static final MSG_LOG_OUT:I = 0x3

.field private static final REQUEST_CODE_PICK_HEADSET:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final USER_DATA_EMAIL:Ljava/lang/String; = "email"

.field private static final USER_DATA_MOBILE:Ljava/lang/String; = "mobile"

.field private static final USER_DATA_USERNAME:Ljava/lang/String; = "username"

.field public static sAm:Landroid/accounts/AccountManager;


# instance fields
.field protected isReCreated:Z

.field private items:[Landroid/widget/RelativeLayout;

.field protected mAccountName:Ljava/lang/String;

.field private mAccountReceiver:Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;

.field protected mActivity:Landroid/app/Activity;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mBack:Landroid/widget/ImageView;

.field protected mCollections:Landroid/widget/RelativeLayout;

.field protected mContentContainer:Landroid/widget/FrameLayout;

.field protected mCurrentBrand:I

.field protected mDrawerContainer:Landroid/widget/FrameLayout;

.field protected mDrawerLayout:Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

.field protected mEffect:Landroid/widget/RelativeLayout;

.field protected mHandler:Landroid/os/Handler;

.field private mHeadsetReceiver:Lcom/oneplus/tuner/base/BaseActivity$HeadsetReceiver;

.field protected mHomePage:Landroid/widget/RelativeLayout;

.field protected mIsAudioEffectEnable:Z

.field protected mIsHeadsetPlugged:Z

.field protected mIsMixer:Z

.field protected mIsNetworkAvailable:Z

.field protected mIsSlideMenuEnable:Z

.field protected mIsSuccessLogin:Z

.field protected mIsTitlebarMenuEnable:Z

.field protected mIsTitlebarOnlyOneMenuItem:Z

.field private mListener:Lcom/oneplus/tuner/base/BaseActivity$MyInterface;

.field protected mMenuOne:Landroid/widget/ImageView;

.field protected mMenuOneIconId:I

.field protected mMenuOneIntent:Landroid/content/Intent;

.field protected mMenuTwo:Landroid/widget/ImageView;

.field protected mMenuTwoIconId:I

.field protected mMenuTwoIntent:Landroid/content/Intent;

.field protected mMixer:Landroid/widget/RelativeLayout;

.field protected mModelName:Ljava/lang/String;

.field protected mMore:Landroid/widget/RelativeLayout;

.field private mNetworkConnectiveReceiver:Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

.field protected mRecentlyUesd:Landroid/widget/RelativeLayout;

.field public mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

.field protected mSlideMenuSelectedIndex:I

.field protected mTitle:Landroid/widget/TextView;

.field protected mTitleView:Landroid/view/View;

.field protected mToken:Ljava/lang/String;

.field protected mToolbar:Landroid/widget/Toolbar;

.field protected mTypeId:Ljava/lang/Long;

.field protected mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

.field protected mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

.field protected manager:Lcom/waves/maxxaudio/MaxxAudioManager;

.field private slideMenuNormalIcons:[I

.field private slideMenuSelectedIcons:[I

.field switchme:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/base/BaseActivity;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/tuner/base/BaseActivity;->sAm:Landroid/accounts/AccountManager;

    .line 914
    const-string v0, "http://183.57.47.59:9999/user/passport/user/info"

    sput-object v0, Lcom/oneplus/tuner/base/BaseActivity;->GET_USER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->isReCreated:Z

    .line 78
    iput-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsTitlebarMenuEnable:Z

    .line 80
    iput-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsTitlebarOnlyOneMenuItem:Z

    .line 101
    new-instance v0, Lcom/oneplus/tuner/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/base/BaseActivity$1;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 185
    iput v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOneIconId:I

    iput v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwoIconId:I

    .line 257
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->slideMenuNormalIcons:[I

    .line 266
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->slideMenuSelectedIcons:[I

    .line 274
    new-array v0, v2, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    .line 1004
    return-void

    .line 257
    nop

    :array_0
    .array-data 4
        0x7f020182
        0x7f020188
        0x7f020180
        0x7f020184
        0x7f020186
        0x7f02018a
    .end array-data

    .line 266
    :array_1
    .array-data 4
        0x7f020183
        0x7f020189
        0x7f020181
        0x7f020185
        0x7f020187
        0x7f02018b
    .end array-data
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/base/BaseActivity;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/base/BaseActivity;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/base/BaseActivity;)Lcom/oneplus/tuner/base/BaseActivity$MyInterface;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/base/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mListener:Lcom/oneplus/tuner/base/BaseActivity$MyInterface;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/oneplus/tuner/base/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configSlideMenuItemSelectedIndex(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 630
    const/4 v5, 0x0

    .line 631
    .local v5, "parent":Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    .line 632
    .local v2, "isSelected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 633
    iget-object v6, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    aget-object v5, v6, v1

    .line 634
    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    .line 635
    :goto_1
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    .line 640
    .local v4, "len":I
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 641
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 642
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, "childView":Landroid/view/View;
    instance-of v6, v0, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 644
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "childView":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/tuner/base/BaseActivity;->slideMenuSelectedIcons:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    :cond_0
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 634
    .end local v3    # "j":I
    .end local v4    # "len":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 644
    .restart local v3    # "j":I
    .restart local v4    # "len":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/tuner/base/BaseActivity;->slideMenuNormalIcons:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    .line 648
    .restart local v0    # "childView":Landroid/view/View;
    :cond_3
    instance-of v6, v0, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 649
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800e4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 632
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v3    # "j":I
    .end local v4    # "len":I
    :cond_5
    return-void
.end method

.method private configTitlebar()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x8

    .line 791
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mBack:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0200e2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    iget-boolean v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsTitlebarMenuEnable:Z

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOne:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsTitlebarOnlyOneMenuItem:Z

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    :cond_1
    iget v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOneIconId:I

    if-eq v0, v3, :cond_2

    .line 804
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOne:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOneIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    :cond_2
    iget v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwoIconId:I

    if-eq v0, v3, :cond_3

    .line 808
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwo:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwoIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$11;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$11;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOne:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$12;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$12;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwo:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$13;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$13;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    return-void

    .line 791
    :cond_4
    const v0, 0x7f0200dd

    goto :goto_0
.end method

.method private findSlideMenuViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    .line 448
    const v0, 0x7f0b0188

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHomePage:Landroid/widget/RelativeLayout;

    .line 449
    const v0, 0x7f0b018a

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mRecentlyUesd:Landroid/widget/RelativeLayout;

    .line 450
    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mCollections:Landroid/widget/RelativeLayout;

    .line 451
    const v0, 0x7f0b018e

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMixer:Landroid/widget/RelativeLayout;

    .line 452
    const v0, 0x7f0b0190

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMore:Landroid/widget/RelativeLayout;

    .line 453
    const v0, 0x7f0b0192

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mEffect:Landroid/widget/RelativeLayout;

    .line 454
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mEffect:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    .line 455
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsAudioEffectEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 456
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHomePage:Landroid/widget/RelativeLayout;

    aput-object v1, v0, v3

    .line 457
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mRecentlyUesd:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    .line 458
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mCollections:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    .line 459
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMixer:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    .line 460
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMore:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    .line 461
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->items:[Landroid/widget/RelativeLayout;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mEffect:Landroid/widget/RelativeLayout;

    aput-object v2, v0, v1

    .line 462
    iget v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mSlideMenuSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/base/BaseActivity;->configSlideMenuItemSelectedIndex(I)V

    .line 464
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetArea:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$2;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$3;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHomePage:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$4;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$4;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mRecentlyUesd:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$5;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$5;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mCollections:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$6;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$6;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMixer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$7;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$7;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMore:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$8;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$8;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v0, :cond_2

    .line 598
    :cond_0
    sget-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 627
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v1}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 602
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$9;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$9;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v1}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 616
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$10;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$10;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private finishActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 736
    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 739
    :cond_0
    return-void
.end method

.method private refreshOneplusAccountInfo()V
    .locals 3

    .prologue
    .line 416
    sget-object v1, Lcom/oneplus/tuner/base/BaseActivity;->sAm:Landroid/accounts/AccountManager;

    const-string v2, "com.oneplus.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 417
    .local v0, "account":[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 418
    const-string v1, ""

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountLoginStatus(Z)V

    .line 420
    const-string v1, ""

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLoginToken(Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

.method private registerAccountStatusChangedReceiver()V
    .locals 3

    .prologue
    .line 425
    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;-><init>(Lcom/oneplus/tuner/base/BaseActivity;Lcom/oneplus/tuner/base/BaseActivity$1;)V

    iput-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountReceiver:Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;

    .line 426
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 427
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oneplus.tuner.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountReceiver:Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/base/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 429
    return-void
.end method

.method private registerNetworkConnectiveReceiver()V
    .locals 2

    .prologue
    .line 432
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v1, "com_oneplus_fresh_network_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;-><init>(Lcom/oneplus/tuner/base/BaseActivity;)V

    iput-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mNetworkConnectiveReceiver:Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

    .line 436
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mNetworkConnectiveReceiver:Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/tuner/base/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    return-void
.end method


# virtual methods
.method public authToken()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 869
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 870
    iput-boolean v4, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSuccessLogin:Z

    .line 871
    invoke-static {v4}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountLoginStatus(Z)V

    .line 873
    sget-object v1, Lcom/oneplus/tuner/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsSlideMenuEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v1, v1, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v1, v1, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 876
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 877
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 878
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 879
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 880
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 902
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSuccessLogin:Z

    .line 885
    iget-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsNetworkAvailable:Z

    if-eqz v1, :cond_2

    .line 886
    invoke-static {v2}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountLoginStatus(Z)V

    .line 889
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v1, v1, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mUserIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 890
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 891
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 892
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected abstract configCurrentSelectedSlideMenuIndex()V
.end method

.method protected abstract configIsSlideMenuEnable()V
.end method

.method protected abstract configIsTitlebarMenuEnable()V
.end method

.method protected abstract configIsTitlebarOnlyOneMenuItem()V
.end method

.method public doRefreshOrGetToken(Z)V
    .locals 1
    .param p1, "isFromReceiver"    # Z

    .prologue
    .line 980
    new-instance v0, Lcom/oneplus/tuner/base/BaseActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/tuner/base/BaseActivity$14;-><init>(Lcom/oneplus/tuner/base/BaseActivity;Z)V

    .line 1001
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1002
    return-void
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 920
    :try_start_0
    sget-object v0, Lcom/oneplus/tuner/base/BaseActivity;->GET_USER_INFO:Ljava/lang/String;

    .line 921
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Lcom/oneplus/api/DefaultClient;

    invoke-direct {v1, v0}, Lcom/oneplus/api/DefaultClient;-><init>(Ljava/lang/String;)V

    .line 922
    .local v1, "client":Lcom/oneplus/api/OneplusClient;
    invoke-static {}, Lcom/oneplus/api/passport/request/GetUseInfoRequest;->newRequest()Lcom/oneplus/api/OneplusRequest;

    move-result-object v3

    .line 923
    .local v3, "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<Lcom/oneplus/api/passport/response/GetUserInfoResponse;>;"
    const-string v5, "token"

    iget-object v6, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/oneplus/api/OneplusRequest;->addheader(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-interface {v1, v3}, Lcom/oneplus/api/OneplusClient;->execute(Lcom/oneplus/api/OneplusRequest;)Lcom/oneplus/api/OneplusResponse;

    move-result-object v4

    check-cast v4, Lcom/oneplus/api/passport/response/GetUserInfoResponse;

    .line 925
    .local v4, "response":Lcom/oneplus/api/passport/response/GetUserInfoResponse;
    invoke-virtual {v4}, Lcom/oneplus/api/passport/response/GetUserInfoResponse;->getUser()Lcom/oneplus/api/domain/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/api/domain/User;->getMobile()Ljava/lang/String;
    :try_end_0
    .catch Lcom/oneplus/api/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 933
    .end local v0    # "URL":Ljava/lang/String;
    .end local v1    # "client":Lcom/oneplus/api/OneplusClient;
    .end local v3    # "request":Lcom/oneplus/api/OneplusRequest;, "Lcom/oneplus/api/OneplusRequest<Lcom/oneplus/api/passport/response/GetUserInfoResponse;>;"
    .end local v4    # "response":Lcom/oneplus/api/passport/response/GetUserInfoResponse;
    :goto_0
    return-object v5

    .line 926
    :catch_0
    move-exception v2

    .line 928
    .local v2, "e":Lcom/oneplus/api/exception/ApiException;
    invoke-virtual {v2}, Lcom/oneplus/api/exception/ApiException;->printStackTrace()V

    .line 933
    .end local v2    # "e":Lcom/oneplus/api/exception/ApiException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 929
    :catch_1
    move-exception v2

    .line 930
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/oneplus/tuner/base/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 248
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 250
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 254
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 764
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 765
    if-nez p2, :cond_0

    .line 766
    packed-switch p1, :pswitch_data_0

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 768
    :pswitch_0
    if-eqz p3, :cond_0

    .line 769
    const-string v1, "earphone_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "modelName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v1, v1, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v1, v1, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    invoke-interface {v1}, Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;->reloadHeadsetConfig()V

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 691
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0b0185

    const v10, 0x7f0b0184

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->configIsSlideMenuEnable()V

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->configIsTitlebarMenuEnable()V

    .line 281
    iget-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->configCurrentSelectedSlideMenuIndex()V

    .line 284
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsTitlebarMenuEnable:Z

    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->configIsTitlebarOnlyOneMenuItem()V

    .line 287
    :cond_1
    if-eqz p1, :cond_2

    .line 288
    iput-boolean v8, p0, Lcom/oneplus/tuner/base/BaseActivity;->isReCreated:Z

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;->registerNetworkConnectiveReceiver()V

    .line 295
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 296
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsHeadsetPlugged:Z

    .line 297
    const-string v3, "shuqi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsHeadsetPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsHeadsetPlugged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, p0}, Lcom/oneplus/tuner/base/BaseActivity;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsNetworkAvailable:Z

    .line 301
    const-string v3, "shuqi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsNetworkAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsNetworkAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    .line 304
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v3}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsAudioEffectEnable:Z

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oem.audiotuner.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    .line 306
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oem.audiotuner.common"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    .line 308
    new-instance v3, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mWriteAndReadConfigNumInfo:Lcom/oneplus/tuner/providers/WriteAndReadConfigNumInfo;

    .line 309
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTypeId:Ljava/lang/Long;

    .line 310
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    .line 311
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    const-string v4, ""

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    .line 314
    const-wide/16 v4, 0x68

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTypeId:Ljava/lang/Long;

    .line 315
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 316
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 318
    :cond_4
    invoke-static {p0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->registerHeadsetTypeChangedBaseListener(Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;)V

    .line 319
    const-string v3, "0706"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseActivity.mTypeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTypeId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BaseActivity.mModelName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 324
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 326
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 329
    iget-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-nez v3, :cond_8

    .line 330
    const v3, 0x7f030054

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/base/BaseActivity;->setContentView(I)V

    .line 331
    invoke-virtual {p0, v10}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToolbar:Landroid/widget/Toolbar;

    .line 332
    invoke-virtual {p0, v11}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mContentContainer:Landroid/widget/FrameLayout;

    .line 342
    :goto_0
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030048

    invoke-virtual {v3, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitleView:Landroid/view/View;

    .line 344
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitleView:Landroid/view/View;

    const v4, 0x7f0b0168

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mBack:Landroid/widget/ImageView;

    .line 345
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitleView:Landroid/view/View;

    const v4, 0x7f0b0062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitle:Landroid/widget/TextView;

    .line 346
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitleView:Landroid/view/View;

    const v4, 0x7f0b0169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuOne:Landroid/widget/ImageView;

    .line 347
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitleView:Landroid/view/View;

    const v4, 0x7f0b016a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mMenuTwo:Landroid/widget/ImageView;

    .line 348
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToolbar:Landroid/widget/Toolbar;

    iget-object v4, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitleView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;->configTitlebar()V

    .line 352
    iget-boolean v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v3, :cond_5

    .line 353
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030057

    invoke-virtual {v3, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 355
    .local v1, "drawer":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/base/BaseActivity;->setDrawer(Landroid/view/View;)V

    .line 356
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;->findSlideMenuViews()V

    .line 360
    .end local v1    # "drawer":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/CommunityApplication;

    .line 362
    .local v0, "app":Lcom/oppo/tribune/CommunityApplication;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/CommunityApplication;->registerHeadsetListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V

    .line 364
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v3, :cond_6

    .line 365
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/base/BaseActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 369
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    sput-object v3, Lcom/oneplus/tuner/base/BaseActivity;->sAm:Landroid/accounts/AccountManager;

    .line 371
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 372
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oneplus_account_token"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oneplus_account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    .line 374
    const-string v3, "diaodiao:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 377
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLoginToken(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 403
    :goto_1
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 405
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->authToken()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;->registerAccountStatusChangedReceiver()V

    .line 413
    return-void

    .line 334
    .end local v0    # "app":Lcom/oppo/tribune/CommunityApplication;
    :cond_8
    const v3, 0x7f030055

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/base/BaseActivity;->setContentView(I)V

    .line 335
    const v3, 0x7f0b0186

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerLayout:Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

    .line 336
    invoke-virtual {p0, v10}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToolbar:Landroid/widget/Toolbar;

    .line 337
    invoke-virtual {p0, v11}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mContentContainer:Landroid/widget/FrameLayout;

    .line 338
    const v3, 0x7f0b0187

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerContainer:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    .line 380
    .restart local v0    # "app":Lcom/oppo/tribune/CommunityApplication;
    :cond_9
    sget-boolean v3, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->isIsNeedRefreshTokenFlag()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 384
    invoke-virtual {p0, v8}, Lcom/oneplus/tuner/base/BaseActivity;->doRefreshOrGetToken(Z)V

    .line 387
    :cond_a
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountInfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    goto :goto_1

    .line 391
    :cond_b
    sget-boolean v3, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/tuner/manager/OppoTunerManager;->isIsNeedRefreshTokenFlag()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 395
    invoke-virtual {p0, v8}, Lcom/oneplus/tuner/base/BaseActivity;->doRefreshOrGetToken(Z)V

    .line 399
    :cond_c
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    .line 400
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountInfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    goto :goto_1

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 695
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 696
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 701
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/CommunityApplication;

    .line 703
    .local v0, "app":Lcom/oppo/tribune/CommunityApplication;
    invoke-virtual {v0, p0}, Lcom/oppo/tribune/CommunityApplication;->unregisterHeadsetListener(Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;)V

    .line 704
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mNetworkConnectiveReceiver:Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mNetworkConnectiveReceiver:Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/base/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 706
    iput-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity;->mNetworkConnectiveReceiver:Lcom/oneplus/tuner/base/BaseActivity$NetworkConnectiveReceiver;

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountReceiver:Lcom/oneplus/tuner/base/BaseActivity$AccountLoginStatusChangedReceiver;

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/base/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 709
    return-void
.end method

.method public onHeadsetPlugged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 714
    sput-boolean v1, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 715
    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v0, :cond_1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 721
    :cond_1
    return-void
.end method

.method public onHeadsetUnplugged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 726
    sput-boolean v1, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 727
    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 733
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const v1, 0x800003

    .line 743
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerLayout:Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerLayout:Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->closeDrawer(I)V

    .line 746
    const/4 v0, 0x0

    .line 748
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 685
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 686
    return-void
.end method

.method public onTypeChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mUser:Lcom/oneplus/tuner/view/OnePlusPersonalView;

    iget-object v0, v0, Lcom/oneplus/tuner/view/OnePlusPersonalView;->mHeadSetName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .param p1, "future"    # Landroid/accounts/AccountManagerFuture;

    .prologue
    .line 942
    const/4 v1, 0x0

    .line 944
    .local v1, "authBundle":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 951
    const-string v3, "authtoken"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 952
    const-string v3, "authtoken"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    .line 953
    const-string v3, "mobile"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "mobile"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    .line 956
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLoginToken(Ljava/lang/String;)V

    .line 957
    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 965
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/base/BaseActivity;->authToken()V

    .line 977
    :goto_2
    return-void

    .line 953
    :cond_0
    const-string v3, "email"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 959
    :cond_1
    const-string v3, ""

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 960
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountLoginStatus(Z)V

    .line 961
    const-string v3, ""

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLoginToken(Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getLoginToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mToken:Ljava/lang/String;

    .line 963
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountInfo()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity;->mAccountName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 967
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_2

    .line 970
    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    .line 972
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_2

    .line 973
    .end local v2    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 975
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setContent(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 658
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 659
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 660
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 664
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    return-void
.end method

.method public setDetailListener(Lcom/oneplus/tuner/base/BaseActivity$MyInterface;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/tuner/base/BaseActivity$MyInterface;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mListener:Lcom/oneplus/tuner/base/BaseActivity$MyInterface;

    .line 851
    return-void
.end method

.method public setDrawer(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 671
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 672
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 673
    return-void
.end method

.method public setDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 677
    return-void
.end method

.method public setDrawer(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    :cond_0
    return-void
.end method

.method public setreloadHeadsetConfigListener(Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity;->mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    .line 760
    return-void
.end method
