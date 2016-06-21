.class public Lcom/android/systemui_ex/egg/LLand;
.super Landroid/widget/FrameLayout;
.source "LLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/egg/LLand$Star;,
        Lcom/android/systemui_ex/egg/LLand$Cloud;,
        Lcom/android/systemui_ex/egg/LLand$Building;,
        Lcom/android/systemui_ex/egg/LLand$Scenery;,
        Lcom/android/systemui_ex/egg/LLand$Stem;,
        Lcom/android/systemui_ex/egg/LLand$Pop;,
        Lcom/android/systemui_ex/egg/LLand$Obstacle;,
        Lcom/android/systemui_ex/egg/LLand$Player;,
        Lcom/android/systemui_ex/egg/LLand$GameView;,
        Lcom/android/systemui_ex/egg/LLand$Params;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_IDDQD:Z

.field private static PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

.field static final POPS:[I

.field private static final SKIES:[[I

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field final hsv:[F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

.field private mFlipped:Z

.field private mFrozen:Z

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/egg/LLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScore:I

.field private mScoreField:Landroid/widget/TextView;

.field private mSplash:Landroid/view/View;

.field private mTimeOfDay:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidth:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 55
    const-string v0, "LLand"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/egg/LLand;->DEBUG:Z

    .line 68
    const-string v0, "LLand.iddqd"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/egg/LLand;->DEBUG_IDDQD:Z

    .line 70
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui_ex/egg/LLand;->POPS:[I

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui_ex/egg/LLand;->SKIES:[[I

    .line 710
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/egg/LLand;->sTmpRect:Landroid/graphics/Rect;

    return-void

    .line 70
    :array_0
    .array-data 4
        0x7f0201d5
        0x0
        0xff
        0x7f0201d6
        0x0
        0xff
        0x7f0201d7
        0x1
        0xff
        0x7f0201d8
        0x0
        0xff
        0x7f0201d9
        0x1
        0xff
        0x7f0201da
        0x1
        0xff
        0x7f0201db
        0x1
        0xff
        0x7f0201d4
        0x0
        0xbe
    .end array-data

    .line 157
    :array_1
    .array-data 4
        -0x3f3f01
        -0x5f5f01
    .end array-data

    :array_2
    .array-data 4
        -0xfffff0
        -0x1000000
    .end array-data

    :array_3
    .array-data 4
        -0xffffc0
        -0xfffff0
    .end array-data

    :array_4
    .array-data 4
        -0x5f7fe0
        -0xdfbf80
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/egg/LLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/egg/LLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    .line 219
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->hsv:[F

    .line 176
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mVibrator:Landroid/os/Vibrator;

    .line 177
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAudioManager:Landroid/media/AudioManager;

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/egg/LLand;->setFocusable(Z)V

    .line 179
    new-instance v0, Lcom/android/systemui_ex/egg/LLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    .line 180
    sget-object v0, Lcom/android/systemui_ex/egg/LLand;->SKIES:[[I

    array-length v0, v0

    invoke-static {v2, v0}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    .line 183
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/egg/LLand;->setLayoutDirection(I)V

    .line 184
    return-void

    .line 219
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/systemui_ex/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "LLand"

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void

    .line 60
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/egg/LLand;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/egg/LLand;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/egg/LLand;->step(JJ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/egg/LLand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/egg/LLand;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui_ex/egg/LLand;->mFrozen:Z

    return p1
.end method

.method static synthetic access$200()Lcom/android/systemui_ex/egg/LLand$Params;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    return-object v0
.end method

.method private addScore(I)V
    .locals 1
    .param p1, "incr"    # I

    .prologue
    .line 350
    iget v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScore:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/egg/LLand;->setScore(I)V

    .line 351
    return-void
.end method

.method public static final clamp(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 412
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "f":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "f":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static final frand()F
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 420
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui_ex/egg/LLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 424
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v0

    int-to-float v1, p0

    int-to-float v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/systemui_ex/egg/LLand;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static final lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 404
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private poke()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 639
    const-string v0, "poke"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mFrozen:Z

    if-eqz v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    if-nez v0, :cond_3

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand;->reset()V

    .line 643
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/egg/LLand;->start(Z)V

    .line 647
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui_ex/egg/LLand$Player;->boost()V

    .line 648
    sget-boolean v0, Lcom/android/systemui_ex/egg/LLand;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    iget v1, v0, Lcom/android/systemui_ex/egg/LLand$Player;->dv:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui_ex/egg/LLand$Player;->dv:F

    .line 650
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui_ex/egg/LLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 644
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    if-nez v0, :cond_2

    .line 645
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/egg/LLand;->start(Z)V

    goto :goto_1
.end method

.method public static final rlerp(FFF)F
    .locals 2
    .param p0, "v"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 408
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private setScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/android/systemui_ex/egg/LLand;->mScore:I

    .line 344
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/systemui_ex/egg/LLand;->DEBUG_IDDQD:Z

    if-eqz v0, :cond_1

    const-string v0, "??"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_0
    return-void

    .line 345
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private step(JJ)V
    .locals 27
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J

    .prologue
    .line 428
    move-wide/from16 v0, p1

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/egg/LLand;->t:F

    .line 429
    move-wide/from16 v0, p3

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/egg/LLand;->dt:F

    .line 431
    sget-boolean v3, Lcom/android/systemui_ex/egg/LLand;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->t:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/egg/LLand;->t:F

    .line 433
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->dt:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/egg/LLand;->dt:F

    .line 437
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getChildCount()I

    move-result v2

    .line 438
    .local v2, "N":I
    const/4 v12, 0x0

    .line 439
    .local v12, "i":I
    :goto_0
    if-ge v12, v2, :cond_2

    .line 440
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui_ex/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 441
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui_ex/egg/LLand$GameView;

    if-eqz v3, :cond_1

    move-object/from16 v3, v25

    .line 442
    check-cast v3, Lcom/android/systemui_ex/egg/LLand$GameView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui_ex/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/egg/LLand;->dt:F

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui_ex/egg/LLand$GameView;->step(JJFF)V

    .line 439
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 447
    .end local v25    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/egg/LLand$Player;->below(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    sget-boolean v3, Lcom/android/systemui_ex/egg/LLand;->DEBUG_IDDQD:Z

    if-eqz v3, :cond_5

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->poke()V

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->unpoke()V

    .line 459
    :cond_3
    :goto_1
    const/16 v21, 0x0

    .line 460
    .local v21, "passedBarrier":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "j":I
    move/from16 v16, v15

    .end local v15    # "j":I
    .local v16, "j":I
    :goto_2
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "j":I
    .restart local v15    # "j":I
    if-lez v16, :cond_8

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui_ex/egg/LLand$Obstacle;

    .line 462
    .local v17, "ob":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->intersects(Lcom/android/systemui_ex/egg/LLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui_ex/egg/LLand;->DEBUG_IDDQD:Z

    if-nez v3, :cond_6

    .line 463
    const-string v3, "player hit an obstacle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->thump()V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->stop()V

    :cond_4
    :goto_3
    move/from16 v16, v15

    .line 470
    .end local v15    # "j":I
    .restart local v16    # "j":I
    goto :goto_2

    .line 452
    .end local v16    # "j":I
    .end local v17    # "ob":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    .end local v21    # "passedBarrier":Z
    :cond_5
    const-string v3, "player hit the floor"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->thump()V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->stop()V

    goto :goto_1

    .line 466
    .restart local v15    # "j":I
    .restart local v17    # "ob":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    .restart local v21    # "passedBarrier":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->cleared(Lcom/android/systemui_ex/egg/LLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 467
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/systemui_ex/egg/LLand$Stem;

    if-eqz v3, :cond_7

    const/16 v21, 0x1

    .line 468
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 472
    .end local v17    # "ob":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_9

    if-eqz v21, :cond_9

    .line 473
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui_ex/egg/LLand;->addScore(I)V

    :cond_9
    move v13, v12

    .line 478
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_4
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-lez v13, :cond_c

    .line 479
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui_ex/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 480
    .restart local v25    # "v":Landroid/view/View;
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;

    if-eqz v3, :cond_b

    .line 481
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 482
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui_ex/egg/LLand;->removeViewAt(I)V

    :cond_a
    :goto_5
    move v13, v12

    .line 490
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_4

    .line 484
    .end local v13    # "i":I
    .restart local v12    # "i":I
    :cond_b
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/systemui_ex/egg/LLand$Scenery;

    if-eqz v3, :cond_a

    move-object/from16 v22, v25

    .line 485
    check-cast v22, Lcom/android/systemui_ex/egg/LLand$Scenery;

    .line 486
    .local v22, "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand$Scenery;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    .line 493
    .end local v22    # "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    .end local v25    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->t:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 494
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->t:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui_ex/egg/LLand;->mLastPipeTime:F

    .line 495
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    sget-object v5, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget-object v5, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_MIN:I

    add-int v18, v3, v4

    .line 499
    .local v18, "obstacley":I
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v14, v3, 0x2

    .line 500
    .local v14, "inset":I
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v26, v3, 0x2

    .line 502
    .local v26, "yinset":I
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v10

    .line 503
    .local v10, "d1":I
    new-instance v23, Lcom/android/systemui_ex/egg/LLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int v4, v18, v26

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui_ex/egg/LLand$Stem;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;FZ)V

    .line 504
    .local v23, "s1":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 509
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;->h:F

    neg-float v3, v3

    move/from16 v0, v26

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 510
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 511
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v19, Lcom/android/systemui_ex/egg/LLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui_ex/egg/LLand$Pop;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;F)V

    .line 518
    .local v19, "p1":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 523
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 524
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 525
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setScaleX(F)V

    .line 526
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setScaleY(F)V

    .line 527
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;->h:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v11

    .line 536
    .local v11, "d2":I
    new-instance v24, Lcom/android/systemui_ex/egg/LLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    sub-int v4, v4, v18

    sget-object v5, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    sub-int v4, v4, v26

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui_ex/egg/LLand$Stem;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;FZ)V

    .line 539
    .local v24, "s2":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 544
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    add-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 545
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 546
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v20, Lcom/android/systemui_ex/egg/LLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui_ex/egg/LLand$Pop;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;F)V

    .line 553
    .local v20, "p2":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v4, v4, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v5, v5, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationX(F)V

    .line 558
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationY(F)V

    .line 559
    sget-object v3, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v3, v3, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setTranslationZ(F)V

    .line 560
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setScaleX(F)V

    .line 561
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->setScaleY(F)V

    .line 562
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui_ex/egg/LLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/systemui_ex/egg/LLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    move/from16 v0, v26

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v14    # "inset":I
    .end local v18    # "obstacley":I
    .end local v19    # "p1":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    .end local v20    # "p2":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    .end local v23    # "s1":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    .end local v24    # "s2":Lcom/android/systemui_ex/egg/LLand$Obstacle;
    .end local v26    # "yinset":I
    :cond_d
    return-void
.end method

.method private thump()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x50

    iget-object v1, p0, Lcom/android/systemui_ex/egg/LLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method private unpoke()V
    .locals 2

    .prologue
    .line 655
    const-string v0, "unboost"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mFrozen:Z

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    invoke-virtual {v0}, Lcom/android/systemui_ex/egg/LLand$Player;->unboost()V

    goto :goto_0
.end method


# virtual methods
.method public getGameTime()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/systemui_ex/egg/LLand;->t:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 663
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 665
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 634
    const-string v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 604
    const-string v2, "keyDown: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 614
    :goto_0
    return v0

    .line 611
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui_ex/egg/LLand;->poke()V

    goto :goto_0

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 619
    const-string v2, "keyDown: %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 629
    :goto_0
    return v0

    .line 626
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui_ex/egg/LLand;->unpoke()V

    goto :goto_0

    .line 620
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand;->stop()V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand;->reset()V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/egg/LLand;->start(Z)V

    .line 217
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 576
    const-string v2, "touch: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 585
    :goto_0
    return v0

    .line 579
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui_ex/egg/LLand;->poke()V

    goto :goto_0

    .line 582
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui_ex/egg/LLand;->unpoke()V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 590
    const-string v2, "trackball: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 599
    :goto_0
    return v0

    .line 593
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui_ex/egg/LLand;->poke()V

    goto :goto_0

    .line 596
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui_ex/egg/LLand;->unpoke()V

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 26

    .prologue
    .line 230
    const-string v21, "reset"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v17, Landroid/graphics/drawable/GradientDrawable;

    sget-object v21, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v22, Lcom/android/systemui_ex/egg/LLand;->SKIES:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 235
    .local v17, "sky":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v21

    const/high16 v22, 0x3f000000    # 0.5f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/egg/LLand;->mFlipped:Z

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/egg/LLand;->mFlipped:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const/high16 v21, -0x40800000    # -1.0f

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->setScaleX(F)V

    .line 241
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/egg/LLand;->setScore(I)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getChildCount()I

    move-result v8

    .local v8, "i":I
    move v9, v8

    .line 244
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_2
    add-int/lit8 v8, v9, -0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    if-lez v9, :cond_3

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui_ex/egg/LLand;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 246
    .local v19, "v":Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui_ex/egg/LLand$GameView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 247
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui_ex/egg/LLand;->removeViewAt(I)V

    :cond_0
    move v9, v8

    .line 249
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 238
    .end local v9    # "i":I
    .end local v19    # "v":Landroid/view/View;
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 239
    :cond_2
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_1

    .line 251
    .restart local v8    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    :cond_4
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    cmpl-double v21, v22, v24

    if-lez v21, :cond_a

    const/16 v16, 0x1

    .line 257
    .local v16, "showingSun":Z
    :goto_3
    if-eqz v16, :cond_5

    .line 258
    new-instance v18, Lcom/android/systemui_ex/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/egg/LLand$Star;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .line 259
    .local v18, "sun":Lcom/android/systemui_ex/egg/LLand$Star;
    const v21, 0x7f020468

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Star;->setBackgroundResource(I)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d0101

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 261
    .local v20, "w":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Star;->setTranslationX(F)V

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 263
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f28f5c3    # 0.66f

    mul-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Star;->setTranslationY(F)V

    .line 264
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 271
    :goto_4
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .end local v18    # "sun":Lcom/android/systemui_ex/egg/LLand$Star;
    .end local v20    # "w":I
    :cond_5
    if-nez v16, :cond_9

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_6
    const/4 v6, 0x1

    .line 275
    .local v6, "dark":Z
    :goto_5
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v7

    .line 276
    .local v7, "ff":F
    if-eqz v6, :cond_7

    const/high16 v21, 0x3f400000    # 0.75f

    cmpg-float v21, v7, v21

    if-ltz v21, :cond_8

    :cond_7
    const/high16 v21, 0x3f000000    # 0.5f

    cmpg-float v21, v7, v21

    if-gez v21, :cond_9

    .line 277
    :cond_8
    new-instance v12, Lcom/android/systemui_ex/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1}, Lcom/android/systemui_ex/egg/LLand$Star;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .line 278
    .local v12, "moon":Lcom/android/systemui_ex/egg/LLand$Star;
    const v21, 0x7f02016a

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui_ex/egg/LLand$Star;->setBackgroundResource(I)V

    .line 279
    invoke-virtual {v12}, Lcom/android/systemui_ex/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    if-eqz v6, :cond_d

    const/16 v21, 0xff

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 280
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    cmpl-double v21, v22, v24

    if-lez v21, :cond_e

    const/high16 v21, -0x40800000    # -1.0f

    :goto_7
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui_ex/egg/LLand$Star;->setScaleX(F)V

    .line 281
    invoke-virtual {v12}, Lcom/android/systemui_ex/egg/LLand$Star;->getScaleX()F

    move-result v21

    const/high16 v22, 0x40a00000    # 5.0f

    const/high16 v23, 0x41f00000    # 30.0f

    invoke-static/range {v22 .. v23}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui_ex/egg/LLand$Star;->setRotation(F)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d0101

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 283
    .restart local v20    # "w":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui_ex/egg/LLand$Star;->setTranslationX(F)V

    .line 284
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/systemui_ex/egg/LLand$Star;->setTranslationY(F)V

    .line 285
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v6    # "dark":Z
    .end local v7    # "ff":F
    .end local v12    # "moon":Lcom/android/systemui_ex/egg/LLand$Star;
    .end local v20    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v21, v0

    div-int/lit8 v11, v21, 0x6

    .line 290
    .local v11, "mh":I
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    cmpg-double v21, v22, v24

    if-gez v21, :cond_f

    const/4 v5, 0x1

    .line 291
    .local v5, "cloudless":Z
    :goto_8
    const/16 v4, 0x14

    .line 292
    .local v4, "N":I
    const/4 v8, 0x0

    :goto_9
    const/16 v21, 0x14

    move/from16 v0, v21

    if-ge v8, v0, :cond_14

    .line 293
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v14

    .line 295
    .local v14, "r1":F
    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd3333333333333L    # 0.3

    cmpg-double v21, v22, v24

    if-gez v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 296
    new-instance v15, Lcom/android/systemui_ex/egg/LLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui_ex/egg/LLand$Star;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .line 311
    .local v15, "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    :goto_a
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->w:I

    move/from16 v21, v0

    iget v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->h:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v0, v15, Lcom/android/systemui_ex/egg/LLand$Building;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 313
    const/16 v21, 0x50

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 324
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    move/from16 v22, v0

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui_ex/egg/LLand$Scenery;->setTranslationX(F)V

    .line 292
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 256
    .end local v4    # "N":I
    .end local v5    # "cloudless":Z
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "mh":I
    .end local v14    # "r1":F
    .end local v15    # "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    .end local v16    # "showingSun":Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 266
    .restart local v16    # "showingSun":Z
    .restart local v18    # "sun":Lcom/android/systemui_ex/egg/LLand$Star;
    .restart local v20    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f28f5c3    # 0.66f

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v22, v0

    sub-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand;->frand(FF)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Star;->setTranslationY(F)V

    .line 267
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 268
    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui_ex/egg/LLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const v22, -0x3f008000    # -7.984375f

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_4

    .line 274
    .end local v18    # "sun":Lcom/android/systemui_ex/egg/LLand$Star;
    .end local v20    # "w":I
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 279
    .restart local v6    # "dark":Z
    .restart local v7    # "ff":F
    .restart local v12    # "moon":Lcom/android/systemui_ex/egg/LLand$Star;
    :cond_d
    const/16 v21, 0x80

    goto/16 :goto_6

    .line 280
    :cond_e
    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 290
    .end local v6    # "dark":Z
    .end local v7    # "ff":F
    .end local v12    # "moon":Lcom/android/systemui_ex/egg/LLand$Star;
    .restart local v11    # "mh":I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 297
    .restart local v4    # "N":I
    .restart local v5    # "cloudless":Z
    .restart local v14    # "r1":F
    :cond_10
    float-to-double v0, v14

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe3333333333333L    # 0.6

    cmpg-double v21, v22, v24

    if-gez v21, :cond_11

    if-nez v5, :cond_11

    .line 298
    new-instance v15, Lcom/android/systemui_ex/egg/LLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui_ex/egg/LLand$Cloud;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .restart local v15    # "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    goto/16 :goto_a

    .line 300
    .end local v15    # "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    :cond_11
    new-instance v15, Lcom/android/systemui_ex/egg/LLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/systemui_ex/egg/LLand$Building;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    .line 302
    .restart local v15    # "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    int-to-float v0, v8

    move/from16 v21, v0

    const/high16 v22, 0x41a00000    # 20.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->z:F

    .line 303
    sget-object v21, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->SCENERY_Z:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    iget v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->z:F

    move/from16 v23, v0

    add-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui_ex/egg/LLand$Scenery;->setTranslationZ(F)V

    .line 304
    const v21, 0x3f59999a    # 0.85f

    iget v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->z:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->v:F

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x432f0000    # 175.0f

    aput v23, v21, v22

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/high16 v23, 0x3e800000    # 0.25f

    aput v23, v21, v22

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/high16 v23, 0x3f800000    # 1.0f

    iget v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->z:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    aput v23, v21, v22

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->hsv:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/systemui_ex/egg/LLand$Scenery;->setBackgroundColor(I)V

    .line 309
    sget-object v21, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->BUILDING_HEIGHT_MIN:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v21

    move/from16 v0, v21

    iput v0, v15, Lcom/android/systemui_ex/egg/LLand$Scenery;->h:I

    goto/16 :goto_a

    .line 315
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_12
    const/16 v21, 0x30

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 316
    invoke-static {}, Lcom/android/systemui_ex/egg/LLand;->frand()F

    move-result v13

    .line 317
    .local v13, "r":F
    instance-of v0, v15, Lcom/android/systemui_ex/egg/LLand$Star;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 318
    mul-float v21, v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 320
    :cond_13
    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v22, v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 328
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "r":F
    .end local v14    # "r1":F
    .end local v15    # "s":Lcom/android/systemui_ex/egg/LLand$Scenery;
    :cond_14
    new-instance v21, Lcom/android/systemui_ex/egg/LLand$Player;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/egg/LLand;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/egg/LLand$Player;-><init>(Lcom/android/systemui_ex/egg/LLand;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand$Player;->setX(F)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui_ex/egg/LLand$Player;->setY(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v23, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->PLAYER_SIZE:I

    move/from16 v23, v0

    sget-object v24, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->PLAYER_SIZE:I

    move/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/egg/LLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v21, Landroid/animation/TimeAnimator;

    invoke-direct/range {v21 .. v21}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui_ex/egg/LLand$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/egg/LLand$1;-><init>(Lcom/android/systemui_ex/egg/LLand;)V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 340
    return-void
.end method

.method public setScoreField(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    .line 198
    if-eqz p1, :cond_1

    .line 199
    sget-object v0, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v0, v0, Lcom/android/systemui_ex/egg/LLand$Params;->HUD_Z:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationZ(F)V

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    if-nez v0, :cond_1

    .line 201
    :cond_0
    const/high16 v0, -0x3c060000    # -500.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 204
    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui_ex/egg/LLand;->mSplash:Landroid/view/View;

    .line 208
    return-void
.end method

.method public start(Z)V
    .locals 7
    .param p1, "startPlaying"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    const-string v1, "start(startPlaying=%s)"

    new-array v2, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/android/systemui_ex/egg/LLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    if-eqz p1, :cond_3

    .line 356
    iput-boolean v5, p0, Lcom/android/systemui_ex/egg/LLand;->mPlaying:Z

    .line 358
    iput v4, p0, Lcom/android/systemui_ex/egg/LLand;->t:F

    .line 360
    invoke-virtual {p0}, Lcom/android/systemui_ex/egg/LLand;->getGameTime()F

    move-result v0

    sget-object v1, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v1, v1, Lcom/android/systemui_ex/egg/LLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand;->mLastPipeTime:F

    .line 362
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mSplash:Landroid/view/View;

    sget-object v1, Lcom/android/systemui_ex/egg/LLand;->PARAMS:Lcom/android/systemui_ex/egg/LLand$Params;

    iget v1, v1, Lcom/android/systemui_ex/egg/LLand$Params;->HUD_Z:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 366
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, 0x7f0201f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    invoke-virtual {v0, v6}, Lcom/android/systemui_ex/egg/LLand$Player;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    iget v1, p0, Lcom/android/systemui_ex/egg/LLand;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Player;->setX(F)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    iget v1, p0, Lcom/android/systemui_ex/egg/LLand;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Player;->setY(F)V

    .line 379
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 381
    iput-boolean v5, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    .line 383
    :cond_1
    return-void

    .line 354
    :cond_2
    const-string v0, "false"

    goto/16 :goto_0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mDroid:Lcom/android/systemui_ex/egg/LLand$Player;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/egg/LLand$Player;->setVisibility(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 389
    iput-boolean v2, p0, Lcom/android/systemui_ex/egg/LLand;->mAnimating:Z

    .line 390
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui_ex/egg/LLand;->mScoreField:Landroid/widget/TextView;

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 392
    sget-object v0, Lcom/android/systemui_ex/egg/LLand;->SKIES:[[I

    array-length v0, v0

    invoke-static {v2, v0}, Lcom/android/systemui_ex/egg/LLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/egg/LLand;->mTimeOfDay:I

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/egg/LLand;->mFrozen:Z

    .line 394
    new-instance v0, Lcom/android/systemui_ex/egg/LLand$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/egg/LLand$2;-><init>(Lcom/android/systemui_ex/egg/LLand;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui_ex/egg/LLand;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    :cond_0
    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/systemui_ex/egg/LLand;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
