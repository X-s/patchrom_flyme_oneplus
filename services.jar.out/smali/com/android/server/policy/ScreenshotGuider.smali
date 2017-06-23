.class public Lcom/android/server/policy/ScreenshotGuider;
.super Ljava/lang/Object;
.source "ScreenshotGuider.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGuideButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsWindowAttached:Z

.field private mRotation:I

.field private mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mIsWindowAttached:Z

    .line 25
    iput v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mRotation:I

    .line 28
    iput-object p1, p0, Lcom/android/server/policy/ScreenshotGuider;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/ScreenshotGuider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mIsWindowAttached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/ScreenshotGuider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ScreenshotGuider;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/server/policy/ScreenshotGuider;->mIsWindowAttached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/ScreenshotGuider;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/ScreenshotGuider;)Landroid/view/WindowManager;
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
    .line 77
    const v0, 0x30a002f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mGuideButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mGuideButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/policy/ScreenshotGuider$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ScreenshotGuider$1;-><init>(Lcom/android/server/policy/ScreenshotGuider;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected hide()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mIsWindowAttached:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ScreenshotGuider;->mIsWindowAttached:Z

    .line 94
    :cond_0
    return-void
.end method

.method protected show()V
    .locals 7

    .prologue
    const v6, 0x302001a

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 34
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 35
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d9

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    const v0, 0x10500

    .line 41
    .local v0, "flags":I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 42
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 43
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 44
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 45
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 48
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mRotation:I

    .line 50
    iget v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mRotation:I

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2}, Lcom/android/server/policy/ScreenshotGuider;->initView(Landroid/view/ViewGroup;)V

    .line 72
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iput-boolean v5, p0, Lcom/android/server/policy/ScreenshotGuider;->mIsWindowAttached:Z

    .line 74
    return-void

    .line 52
    :pswitch_1
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 53
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x3020019

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 57
    :pswitch_2
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 58
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 62
    :pswitch_3
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 63
    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
