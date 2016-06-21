.class public Lcom/android/systemui_ex/plugin/RippleView;
.super Landroid/view/View;
.source "RippleView.java"


# static fields
.field public static MESSAGE_DELAY:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private isStartRipple:Z

.field private mDuration:F

.field private mEndRadiusFirst:F

.field private mEndRadiusSecond:F

.field private mOffsetFirst:F

.field private mOffsetSecond:F

.field private mPositionX:I

.field private mPositionY:I

.field private mRipplePaintFirst:Landroid/graphics/Paint;

.field private mRipplePaintSecond:Landroid/graphics/Paint;

.field private mStartRadiusFirst:F

.field private mStartRadiusSecond:F

.field private rippleFirstRadius:I

.field private rippleSecendRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x14

    sput v0, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 32
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    .line 35
    new-instance v0, Lcom/android/systemui_ex/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/plugin/RippleView$1;-><init>(Lcom/android/systemui_ex/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->handler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/RippleView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 32
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    .line 35
    new-instance v0, Lcom/android/systemui_ex/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/plugin/RippleView$1;-><init>(Lcom/android/systemui_ex/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->handler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/RippleView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    .line 32
    const/4 v0, -0x5

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    .line 35
    new-instance v0, Lcom/android/systemui_ex/plugin/RippleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/plugin/RippleView$1;-><init>(Lcom/android/systemui_ex/plugin/RippleView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->handler:Landroid/os/Handler;

    .line 82
    invoke-direct {p0}, Lcom/android/systemui_ex/plugin/RippleView;->init()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/plugin/RippleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->isStartRipple:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/plugin/RippleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/plugin/RippleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/systemui_ex/plugin/RippleView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/plugin/RippleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/plugin/RippleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/plugin/RippleView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/systemui_ex/plugin/RippleView;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui_ex/plugin/RippleView;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    return-void
.end method


# virtual methods
.method public init(IIFFFFFIFF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadiusFirst"    # F
    .param p4, "endRadiusFirst"    # F
    .param p5, "startRadiusSecond"    # F
    .param p6, "endRadiusSecond"    # F
    .param p7, "duration"    # F
    .param p8, "color"    # I
    .param p9, "widthFirst"    # F
    .param p10, "widthSecond"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/android/systemui_ex/plugin/RippleView;->mPositionX:I

    .line 130
    iput p2, p0, Lcom/android/systemui_ex/plugin/RippleView;->mPositionY:I

    .line 131
    iput p3, p0, Lcom/android/systemui_ex/plugin/RippleView;->mStartRadiusFirst:F

    .line 132
    iput p4, p0, Lcom/android/systemui_ex/plugin/RippleView;->mEndRadiusFirst:F

    .line 133
    iput p5, p0, Lcom/android/systemui_ex/plugin/RippleView;->mStartRadiusSecond:F

    .line 134
    iput p6, p0, Lcom/android/systemui_ex/plugin/RippleView;->mEndRadiusSecond:F

    .line 135
    iput p7, p0, Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F

    .line 136
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mEndRadiusFirst:F

    iget v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->mStartRadiusFirst:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mOffsetFirst:F

    .line 137
    iget v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mEndRadiusSecond:F

    iget v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->mStartRadiusSecond:F

    sub-float/2addr v0, v1

    sget v1, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mOffsetSecond:F

    .line 138
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v10, 0x406fe00000000000L    # 255.0

    const-wide v8, 0x400921ff2e48e8a7L    # 3.1416

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-boolean v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->isStartRipple:Z

    if-eqz v2, :cond_1

    .line 97
    iget v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    if-ltz v2, :cond_0

    .line 98
    sget v2, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget v4, p0, Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    double-to-int v0, v2

    .line 99
    .local v0, "i1":I
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui_ex/plugin/RippleView;->mPositionY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui_ex/plugin/RippleView;->mStartRadiusFirst:F

    iget v5, p0, Lcom/android/systemui_ex/plugin/RippleView;->mOffsetFirst:F

    iget v6, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintFirst:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    .end local v0    # "i1":I
    :cond_0
    iget v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    if-ltz v2, :cond_1

    .line 104
    sget v2, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget v4, p0, Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    double-to-int v1, v2

    .line 105
    .local v1, "i2":I
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    iget v2, p0, Lcom/android/systemui_ex/plugin/RippleView;->mPositionX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui_ex/plugin/RippleView;->mPositionY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui_ex/plugin/RippleView;->mStartRadiusSecond:F

    iget v5, p0, Lcom/android/systemui_ex/plugin/RippleView;->mOffsetSecond:F

    iget v6, p0, Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui_ex/plugin/RippleView;->mRipplePaintSecond:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    .end local v1    # "i2":I
    :cond_1
    return-void
.end method

.method public startRipple()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/plugin/RippleView;->startRipple(I)V

    .line 114
    return-void
.end method

.method public startRipple(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->isStartRipple:Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void
.end method

.method public stopRipple()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui_ex/plugin/RippleView;->isStartRipple:Z

    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    return-void
.end method
