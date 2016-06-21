.class public Lcom/android/keyguard/DisappearAnimationUtils;
.super Lcom/android/keyguard/AppearAnimationUtils;
.source "DisappearAnimationUtils.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/DisappearAnimationUtils;->mScaleTranslationWithRow:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/DisappearAnimationUtils;->mAppearing:Z

    .line 40
    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 43
    mul-int/lit8 v0, p1, 0x3c

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/DisappearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
