.class public Lcom/android/server/policy/UcPowerIconAnimation;
.super Landroid/graphics/drawable/Drawable;
.source "UcPowerIconAnimation.java"


# static fields
.field private static final BACKGROUND_COLOR:I = -0x1

.field private static final CENTER_LINE_LENGTH:I = 0x24

.field private static final DBG:Z = false

.field private static final PAINT_COLOR:I = -0x5c9c8

.field private static final PAINT_STROKE_WIDTH:I = 0x8

.field public static final TAG:Ljava/lang/String; = "UcPowerAnimation"


# instance fields
.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mArcAnimStartPos:I

.field private mArcLengthAnim1:Landroid/animation/ValueAnimator;

.field private mArcLengthAnim2:Landroid/animation/ValueAnimator;

.field private mArcLengthAnimValue:I

.field private mArcPosAnim1:Landroid/animation/ValueAnimator;

.field private mArcPosAnim2:Landroid/animation/ValueAnimator;

.field private mArcPosAnimValue:I

.field private mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

.field private mArcTurnAroundAnimPos:I

.field private mLineAnimProgress:F

.field private mLineAnimation:Landroid/animation/ValueAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintAlpha:I

.field private mProgress:F

.field private mShutingDown:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 28
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    .line 39
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    .line 46
    invoke-direct {p0}, Lcom/android/server/policy/UcPowerIconAnimation;->initPaint()V

    .line 47
    invoke-direct {p0}, Lcom/android/server/policy/UcPowerIconAnimation;->initAnimations()V

    .line 48
    return-void

    .line 27
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x0
        0x13b
    .end array-data

    .line 30
    :array_3
    .array-data 4
        0x0
        0x2d
    .end array-data

    .line 31
    :array_4
    .array-data 4
        0x10e
        0x2d
    .end array-data

    .line 32
    :array_5
    .array-data 4
        0x2d
        0x10e
    .end array-data

    .line 33
    :array_6
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/server/policy/UcPowerIconAnimation;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimProgress:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/policy/UcPowerIconAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnimValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/UcPowerIconAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/UcPowerIconAnimation;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/UcPowerIconAnimation;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/UcPowerIconAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnimValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/UcPowerIconAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnimValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/UcPowerIconAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcAnimStartPos:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/UcPowerIconAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcAnimStartPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/UcPowerIconAnimation;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/UcPowerIconAnimation;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/UcPowerIconAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/UcPowerIconAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnimPos:I

    return p1
.end method

.method private initAnimations()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x1f4

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 180
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$1;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$2;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$3;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$4;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$5;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$6;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 258
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$7;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$8;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 284
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$9;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$10;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 310
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 311
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/policy/UcPowerIconAnimation$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/UcPowerIconAnimation$11;-><init>(Lcom/android/server/policy/UcPowerIconAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v7, -0x5c9c8

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v4, 0x42100000    # 36.0f

    const/4 v9, 0x0

    const/high16 v12, 0x42960000    # 75.0f

    .line 59
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerIconAnimation;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 60
    .local v11, "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    iget v0, v11, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget v1, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, v11, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x4

    int-to-float v2, v2

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    .local v6, "boundsF":Landroid/graphics/RectF;
    iget-boolean v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z

    if-nez v0, :cond_2

    .line 73
    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    const/high16 v0, -0x3dcc0000    # -45.0f

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    div-float/2addr v1, v12

    mul-float/2addr v1, v8

    add-float v2, v0, v1

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    div-float/2addr v0, v12

    mul-float/2addr v0, v8

    sub-float v3, v8, v0

    iget-object v5, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    const/high16 v2, -0x3dcc0000    # -45.0f

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    div-float/2addr v0, v12

    mul-float v3, v0, v8

    iget-object v5, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    sub-float/2addr v0, v12

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v0, v2

    mul-float v2, v0, v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    const/high16 v7, -0x3dcc0000    # -45.0f

    iget-object v10, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 100
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    sub-float/2addr v0, v12

    const/high16 v5, 0x41c80000    # 25.0f

    div-float/2addr v0, v5

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1, v9, v9, v9}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 109
    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimProgress:F

    const/high16 v1, 0x42c20000    # 97.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimProgress:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float/2addr v2, v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x24

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnimPos:I

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcAnimStartPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnimValue:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    int-to-float v7, v0

    iget v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnimValue:I

    int-to-float v8, v0

    iget-object v10, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaintAlpha:I

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerIconAnimation;->invalidateSelf()V

    .line 134
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 139
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mProgress:F

    .line 149
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerIconAnimation;->invalidateSelf()V

    .line 150
    return-void
.end method

.method public startShutdownAnim()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z

    .line 156
    const/16 v0, -0x2d

    iput v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcAnimStartPos:I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnimValue:I

    .line 159
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnimValue:I

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 175
    return-void
.end method

.method public stopShutdownAnim()V
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mShutingDown:Z

    .line 325
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 326
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 327
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 328
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mLineAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 329
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 330
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 331
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 332
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcLengthAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 333
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 334
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 335
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcPosAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 337
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/UcPowerIconAnimation;->mArcTurnAroundAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 341
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/server/policy/UcPowerIconAnimation;->setAlpha(I)V

    .line 342
    invoke-virtual {p0}, Lcom/android/server/policy/UcPowerIconAnimation;->invalidateSelf()V

    .line 344
    :cond_0
    return-void
.end method
