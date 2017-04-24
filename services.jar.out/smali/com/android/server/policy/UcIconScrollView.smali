.class public Lcom/android/server/policy/UcIconScrollView;
.super Lcom/android/server/policy/UcPowerScrollView;
.source "UcIconScrollView.java"


# static fields
.field private static final CURVE_SIMULATOR:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final PHASE_IN_DURATION:I = 0x258

.field private static final POS_BASE_Y:I = 0x4c8

.field private static final POS_EXIT_Y:I = 0x5d6

.field private static final POS_PHASE_IN_Y:I = 0x5d6

.field private static final POS_SHUTDOWN_Y:I = 0x18f

.field private static final TAG:Ljava/lang/String; = "UcIconScrollView"


# instance fields
.field private mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

.field private mPowerViewIcon:Landroid/widget/ImageView;

.field private mPowerViewText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    .line 43
    sget-object v0, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    const v1, 0x444e4000    # 825.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x44700000    # 960.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    const v1, 0x44852000    # 1065.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x44918000    # 1164.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    const v1, 0x44a32000    # 1305.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x44a02000    # 1281.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    const v1, 0x44c12000    # 1545.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x44a7a000    # 1341.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    const v1, 0x44df2000    # 1785.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x44a9e000    # 1359.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/UcPowerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private getMappingScrollYDelta(I)I
    .locals 7
    .param p1, "rawScrollY"    # I

    .prologue
    .line 52
    rsub-int v4, p1, 0x6f9

    int-to-float v2, v4

    .line 54
    .local v2, "scrollYOffset":F
    const/4 v3, 0x0

    .line 56
    .local v3, "targetScrollYOffset":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 57
    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 60
    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v5, v4

    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v6, v4

    div-float v1, v5, v4

    .line 63
    .local v1, "scale":F
    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, v1

    add-float v3, v5, v4

    .line 70
    .end local v1    # "scale":F
    :cond_0
    sget-object v4, Lcom/android/server/policy/UcIconScrollView;->CURVE_SIMULATOR:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v3, v4

    float-to-int v4, v4

    return v4

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x30a0037

    invoke-virtual {p0, v0}, Lcom/android/server/policy/UcIconScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerViewIcon:Landroid/widget/ImageView;

    .line 80
    const v0, 0x30a0038

    invoke-virtual {p0, v0}, Lcom/android/server/policy/UcIconScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerViewText:Landroid/widget/TextView;

    .line 82
    new-instance v0, Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-direct {v0}, Lcom/android/server/policy/UcPowerIconAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerViewIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-super {p0}, Lcom/android/server/policy/UcPowerScrollView;->onFinishInflate()V

    .line 85
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v3, 0x4c8

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/UcPowerScrollView;->onScrollChanged(IIII)V

    .line 96
    if-ne p2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/UcIconScrollView;->mIsPhaseInDone:Z

    .line 98
    :cond_0
    if-lt p2, v3, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/UcPowerIconAnimation;->setProgress(F)V

    .line 101
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerViewText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_1
    if-ge p2, v3, :cond_2

    const/16 v2, 0x18f

    if-lt p2, v2, :cond_2

    .line 106
    const v0, -0x45611ff6

    .line 107
    .local v0, "alphaDeltaPerLevel":F
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerViewText:Landroid/widget/TextView;

    add-int/lit16 v3, p2, -0x4c8

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 108
    const v1, -0x4207c1f0

    .line 109
    .local v1, "progressDeltaPerLevel":F
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

    add-int/lit16 v3, p2, -0x4c8

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/UcPowerIconAnimation;->setProgress(F)V

    goto :goto_0

    .line 114
    .end local v0    # "alphaDeltaPerLevel":F
    .end local v1    # "progressDeltaPerLevel":F
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/android/server/policy/UcPowerIconAnimation;->setProgress(F)V

    .line 115
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerViewText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method protected phaseIn()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/UcIconScrollView;->mPhaseInScroller:Landroid/widget/Scroller;

    const/16 v2, 0x5d6

    const/16 v4, -0x10e

    const/16 v5, 0x258

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 91
    return-void
.end method

.method protected scrollSync(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/16 v2, 0x6f9

    const/high16 v4, 0x3f800000    # 1.0f

    .line 121
    if-le p2, v2, :cond_0

    .line 122
    add-int/lit16 v0, p2, -0x6f9

    .line 123
    .local v0, "deltaY":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit16 v3, v3, 0x4c8

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/UcIconScrollView;->scrollTo(II)V

    .line 134
    .end local v1    # "scale":F
    :goto_0
    return-void

    .line 125
    .end local v0    # "deltaY":I
    :cond_0
    if-gt p2, v2, :cond_1

    const/16 v2, 0x3c0

    if-le p2, v2, :cond_1

    .line 126
    add-int/lit16 v0, p2, -0x6f9

    .line 127
    .restart local v0    # "deltaY":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 128
    .restart local v1    # "scale":F
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit16 v3, v3, 0x4c8

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/UcIconScrollView;->scrollTo(II)V

    goto :goto_0

    .line 131
    .end local v0    # "deltaY":I
    .end local v1    # "scale":F
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/UcIconScrollView;->getMappingScrollYDelta(I)I

    move-result v0

    .line 132
    .restart local v0    # "deltaY":I
    iget-object v2, p0, Lcom/android/server/policy/UcIconScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    rsub-int v3, v0, 0x18f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/UcIconScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/policy/UcIconScrollView;->mPowerDrawable:Lcom/android/server/policy/UcPowerIconAnimation;

    invoke-virtual {v0}, Lcom/android/server/policy/UcPowerIconAnimation;->startShutdownAnim()V

    .line 139
    return-void
.end method
