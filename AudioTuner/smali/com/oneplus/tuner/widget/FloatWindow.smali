.class public Lcom/oneplus/tuner/widget/FloatWindow;
.super Ljava/lang/Object;
.source "FloatWindow.java"


# static fields
.field private static isFloatViewAttached:Z

.field private static mFloatWindow:Landroid/view/View;

.field private static mInited:Z

.field private static mWManager:Landroid/view/WindowManager;

.field private static mWmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z

    .line 18
    sput-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->mInited:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWManager:Landroid/view/WindowManager;

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addfloatview(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/oneplus/tuner/widget/FloatWindow;->initFloatWindow(Landroid/content/Context;)V

    .line 66
    sget-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z

    if-nez v0, :cond_0

    .line 68
    :try_start_0
    sget-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mFloatWindow:Landroid/view/View;

    sget-object v2, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initFloatWindow(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-boolean v1, Lcom/oneplus/tuner/widget/FloatWindow;->mInited:Z

    if-nez v1, :cond_0

    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mFloatWindow:Landroid/view/View;

    .line 31
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    .line 32
    sget-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, Lcom/oneplus/tuner/widget/FloatWindow;->setWMParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 33
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mWManager:Landroid/view/WindowManager;

    .line 35
    const/4 v1, 0x0

    sput-boolean v1, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/tuner/widget/FloatWindow;->mInited:Z

    .line 39
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public static needInit()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->mInited:Z

    .line 45
    return-void
.end method

.method public static removefloatview(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/oneplus/tuner/widget/FloatWindow;->initFloatWindow(Landroid/content/Context;)V

    .line 85
    sget-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    sget-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mFloatWindow:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setWMParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p0, "wmParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, -0x2

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 51
    const/16 v0, 0x38

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 54
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    const/16 v0, 0x53

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 57
    return-void
.end method

.method public static updateContent(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-boolean v1, Lcom/oneplus/tuner/widget/FloatWindow;->mInited:Z

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mFloatWindow:Landroid/view/View;

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "mpwTextview":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0    # "mpwTextview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public static updatefloatview(Landroid/content/Context;II)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 107
    if-nez p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/oneplus/tuner/widget/FloatWindow;->initFloatWindow(Landroid/content/Context;)V

    .line 113
    sget-boolean v0, Lcom/oneplus/tuner/widget/FloatWindow;->isFloatViewAttached:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    sget-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    sget-object v0, Lcom/oneplus/tuner/widget/FloatWindow;->mWManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/oneplus/tuner/widget/FloatWindow;->mFloatWindow:Landroid/view/View;

    sget-object v2, Lcom/oneplus/tuner/widget/FloatWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
