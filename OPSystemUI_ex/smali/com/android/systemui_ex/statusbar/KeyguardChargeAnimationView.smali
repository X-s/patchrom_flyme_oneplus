.class public Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
.super Landroid/view/View;
.source "KeyguardChargeAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;
    }
.end annotation


# instance fields
.field private final ANIMATION_GAP:I

.field private final ANIMATION_TIME:I

.field private final CHARGING_TEXT_START_TIME:I

.field private final CIRCLE_SIZE:I

.field private mAlpha:[I

.field public mAnimationState:Z

.field private mBatteryLevel:I

.field private mBatteryLevelView:Landroid/widget/TextView;

.field public mChargingTextAnimation:Z

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleSize:[I

.field private mPaint:[Landroid/graphics/Paint;

.field private mPlugged:Z

.field mSet:Landroid/animation/AnimatorSet;

.field private mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

.field private mText:Ljava/lang/String;

.field mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mVisible:Z

.field private timer:Ljava/util/Timer;

.field updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->ANIMATION_TIME:I

    .line 46
    const/16 v0, 0x118

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->CIRCLE_SIZE:I

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->ANIMATION_GAP:I

    .line 48
    const/16 v0, 0x514

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->CHARGING_TEXT_START_TIME:I

    .line 50
    new-array v0, v2, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    .line 51
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mVisible:Z

    .line 240
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$5;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->updateHandler:Landroid/os/Handler;

    .line 66
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x96
        0xaf
        0xc8
        0xe1
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->ANIMATION_TIME:I

    .line 46
    const/16 v0, 0x118

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->CIRCLE_SIZE:I

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->ANIMATION_GAP:I

    .line 48
    const/16 v0, 0x514

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->CHARGING_TEXT_START_TIME:I

    .line 50
    new-array v0, v2, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    .line 51
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mVisible:Z

    .line 240
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$5;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->updateHandler:Landroid/os/Handler;

    .line 70
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x96
        0xaf
        0xc8
        0xe1
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->ANIMATION_TIME:I

    .line 46
    const/16 v0, 0x118

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->CIRCLE_SIZE:I

    .line 47
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->ANIMATION_GAP:I

    .line 48
    const/16 v0, 0x514

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->CHARGING_TEXT_START_TIME:I

    .line 50
    new-array v0, v2, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    .line 51
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mVisible:Z

    .line 240
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$5;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->updateHandler:Landroid/os/Handler;

    .line 74
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x96
        0xaf
        0xc8
        0xe1
        0xfa
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;DDDD)D
    .locals 3
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # D

    .prologue
    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->easeOutCubic(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;DDDD)D
    .locals 3
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # D

    .prologue
    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->easeInQuart(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)[Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->stopCircleAnimation()V

    return-void
.end method

.method private cancelDrawCircle()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;->cancel()Z

    .line 269
    :cond_1
    return-void
.end method

.method private easeInQuart(DDDD)D
    .locals 3
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    .line 236
    div-double/2addr p1, p7

    .line 237
    mul-double v0, p5, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private easeOutCubic(DDDD)D
    .locals 7
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 232
    div-double v0, p1, p7

    sub-double/2addr v0, v4

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    return-wide v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 79
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f070157

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 80
    .local v2, "colorRed":[I
    const v5, 0x7f070158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 81
    .local v1, "colorGreen":[I
    const v5, 0x7f070159

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 83
    .local v0, "colorBlue":[I
    const v5, 0x7f07015a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I

    .line 85
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    aput v10, v5, v3

    .line 88
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 89
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAlpha:[I

    aget v6, v6, v3

    aget v7, v2, v3

    aget v8, v1, v3

    aget v9, v0, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->stopCircleAnimation()V

    .line 95
    iput-boolean v10, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 96
    return-void
.end method

.method private startCircleAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setVisibility(I)V

    .line 190
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 197
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mSet:Landroid/animation/AnimatorSet;

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 200
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$3;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$4;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 227
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 229
    return-void

    .line 199
    :array_0
    .array-data 4
        0x0
        0x7d0
    .end array-data
.end method

.method private stopCircleAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    const-string v0, "KeyguardChargeAnimationView"

    const-string v1, "stopCircleAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->cancelDrawCircle()V

    .line 101
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 106
    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mSet:Landroid/animation/AnimatorSet;

    .line 108
    :cond_0
    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 109
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setVisibility(I)V

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mVisible:Z

    if-nez v0, :cond_2

    .line 112
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->doChargingTextAnimation(Z)V

    .line 114
    :cond_2
    return-void
.end method


# virtual methods
.method public doChargingTextAnimation(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    if-eqz v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    if-nez v4, :cond_0

    .line 140
    :cond_2
    const/4 v0, 0x0

    .line 141
    .local v0, "beginValue":F
    const/4 v1, 0x0

    .line 143
    .local v1, "endValue":F
    if-eqz p1, :cond_3

    .line 144
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/high16 v1, 0x3f800000    # 1.0f

    .line 148
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_1
    const-string v4, "KeyguardChargeAnimationView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChargingText to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v8, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 157
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 158
    .local v3, "textSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v7

    aput v1, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 160
    .local v2, "textAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    new-instance v4, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    new-instance v4, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Z)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 182
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 152
    .end local v2    # "textAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "textSet":Landroid/animation/AnimatorSet;
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    if-eqz v1, :cond_1

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 282
    iget v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    iget v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mViewHeight:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    aget v1, v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mCircleSize:[I

    aget v1, v1, v0

    int-to-float v1, v1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v0

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 286
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 273
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mViewHeight:I

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mViewWidth:I

    .line 276
    return-void
.end method

.method public setChargingTextView(Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;
    .param p2, "batteryLevelView"    # Landroid/widget/TextView;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    .line 118
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;

    .line 119
    return-void
.end method

.method public setPluggedState(ZILjava/lang/String;)V
    .locals 0
    .param p1, "plugged"    # Z
    .param p2, "batteryLevel"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mPlugged:Z

    .line 123
    iput p2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevel:I

    .line 124
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mText:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setVisibleState(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mVisible:Z

    .line 129
    return-void
.end method

.method public startDrawCircle()V
    .locals 7

    .prologue
    .line 248
    const-string v0, "KeyguardChargeAnimationView"

    const-string v1, "startDrawCircle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->init()V

    .line 250
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->timer:Ljava/util/Timer;

    .line 251
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;->cancel()Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    .line 255
    :cond_0
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 257
    .local v6, "rate":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTask:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$MyTimerTask;

    const-wide/16 v2, 0x0

    int-to-long v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 259
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->startCircleAnimation()V

    .line 260
    return-void
.end method
