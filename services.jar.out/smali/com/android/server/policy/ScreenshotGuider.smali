.class public Lcom/android/server/policy/ScreenshotGuider;
.super Ljava/lang/Object;
.source "ScreenshotGuider.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuideButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRotation:I

.field private mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mRotation:I

    .line 27
    iput-object p1, p0, Lcom/android/server/policy/ScreenshotGuider;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/ScreenshotGuider;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/ScreenshotGuider;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ScreenshotGuider;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/ScreenshotGuider;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private initView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    const v0, 0x30a0030

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mGuideButton:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mGuideButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/policy/ScreenshotGuider$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ScreenshotGuider$1;-><init>(Lcom/android/server/policy/ScreenshotGuider;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected hide()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    .line 105
    :cond_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected declared-synchronized show()V
    .locals 5

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 39
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 40
    const-string v2, "ScreenShotGuider"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x10500

    .line 45
    .local v0, "flags":I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 47
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mRotation:I

    .line 54
    iget v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mRotation:I

    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2}, Lcom/android/server/policy/ScreenshotGuider;->initView(Landroid/view/ViewGroup;)V

    .line 76
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v0    # "flags":I
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 56
    .restart local v0    # "flags":I
    .restart local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :pswitch_1
    const/4 v2, 0x1

    :try_start_2
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 57
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x3020018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    goto :goto_1

    .line 61
    :pswitch_2
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 62
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x3020019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    goto :goto_1

    .line 66
    :pswitch_3
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 67
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x3020019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
