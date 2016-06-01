.class public Lcom/oneplus/tuner/widget/ShrinkAnimation;
.super Landroid/view/animation/Animation;
.source "ShrinkAnimation.java"


# instance fields
.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromXDelta"    # F
    .param p3, "toXDelta"    # F
    .param p4, "fromYDelta"    # F
    .param p5, "toYDelta"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 12
    iput v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXType:I

    .line 13
    iput v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXType:I

    .line 15
    iput v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYType:I

    .line 16
    iput v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYType:I

    .line 18
    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXValue:F

    .line 19
    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXValue:F

    .line 21
    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYValue:F

    .line 22
    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYValue:F

    .line 33
    iput p2, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXValue:F

    .line 34
    iput p3, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXValue:F

    .line 35
    iput p4, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYValue:F

    .line 36
    iput p5, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYValue:F

    .line 37
    iput-object p1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mView:Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v5, 0x0

    .line 42
    iget v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXDelta:F

    .line 43
    .local v0, "dx":F
    iget v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYDelta:F

    .line 44
    .local v1, "dy":F
    iget v2, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXDelta:F

    iget v3, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 45
    iget v2, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXDelta:F

    iget v3, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXDelta:F

    iget v4, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 47
    :cond_0
    iget v2, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYDelta:F

    iget v3, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 48
    iget v2, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYDelta:F

    iget v3, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYDelta:F

    iget v4, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mView:Landroid/view/View;

    float-to-int v3, v0

    float-to-int v4, v1

    neg-int v4, v4

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 58
    iget v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXType:I

    iget v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/oneplus/tuner/widget/ShrinkAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromXDelta:F

    .line 59
    iget v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXType:I

    iget v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/oneplus/tuner/widget/ShrinkAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToXDelta:F

    .line 60
    iget v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYType:I

    iget v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/oneplus/tuner/widget/ShrinkAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mFromYDelta:F

    .line 61
    iget v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYType:I

    iget v1, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/oneplus/tuner/widget/ShrinkAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/oneplus/tuner/widget/ShrinkAnimation;->mToYDelta:F

    .line 62
    return-void
.end method
