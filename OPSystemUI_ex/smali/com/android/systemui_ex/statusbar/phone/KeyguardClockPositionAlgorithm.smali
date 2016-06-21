.class public Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static final sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mClockNotificationsMarginMax:I

.field private mClockNotificationsMarginMin:I

.field private mClockYFractionMax:F

.field private mClockYFractionMin:F

.field private mDensity:F

.field private mEmptyDragAmount:F

.field private mExpandedHeight:F

.field private mHeight:I

.field private mKeyguardStatusHeight:I

.field private mMaxKeyguardNotifications:I

.field private mMaxPanelHeight:I

.field private mMoreCardNotificationAmount:F

.field private mNotificationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 65
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f600000    # 0.875f

    const v3, 0x3f19999a    # 0.6f

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 67
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 196
    return-void
.end method

.method private getClockAlpha(F)F
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 184
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    sub-float v2, p1, v2

    const v3, 0x3e99999a    # 0.3f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getClockNotificationsPadding()I
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 135
    .local v0, "t":F
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 136
    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getClockScale(III)F
    .locals 10
    .param p1, "notificationPadding"    # I
    .param p2, "clockY"    # I
    .param p3, "startPadding"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 122
    const/high16 v3, 0x40000000    # 2.0f

    .line 124
    .local v3, "scaleMultiplier":F
    int-to-float v4, p2

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v2, v4, v5

    .line 125
    .local v2, "scaleEnd":F
    int-to-float v4, p1

    sub-float v0, v4, v2

    .line 126
    .local v0, "distanceToScaleEnd":F
    int-to-float v4, p3

    sub-float/2addr v4, v2

    div-float v1, v0, v4

    .line 127
    .local v1, "progress":F
    const/4 v4, 0x0

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 128
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 129
    float-to-double v4, v1

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    iget v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    div-float/2addr v6, v7

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-double v6, v6

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 130
    return v1
.end method

.method private getClockY()I
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYFraction()F

    move-result v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getClockYExpansionAdjustment()F
    .locals 6

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionRubberbandFactor()F

    move-result v0

    .line 151
    .local v0, "rubberbandFactor":F
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    sub-float/2addr v4, v5

    mul-float v3, v0, v4

    .line 152
    .local v3, "value":F
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 153
    .local v2, "t":F
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->sSlowDownInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v4

    neg-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    int-to-float v5, v5

    mul-float v1, v4, v5

    .line 155
    .local v1, "slowedDownValue":F
    iget v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    if-nez v4, :cond_0

    .line 156
    const/high16 v4, -0x40000000    # -2.0f

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    const/high16 v5, 0x40400000    # 3.0f

    div-float v1, v4, v5

    .line 158
    .end local v1    # "slowedDownValue":F
    :cond_0
    return v1
.end method

.method private getClockYExpansionRubberbandFactor()F
    .locals 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 163
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 164
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 165
    float-to-double v2, v0

    const-wide v4, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 166
    sub-float/2addr v1, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getClockYFraction()F
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 141
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 142
    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getNotificationAmountT()F
    .locals 3

    .prologue
    .line 192
    iget v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private getTopPaddingAdjMultiplier()F
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 170
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getNotificationAmountT()F

    move-result v0

    .line 171
    .local v0, "t":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 172
    sub-float/2addr v1, v0

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    const v2, 0x404ccccd    # 3.2f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 76
    const v0, 0x7f0d007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMin:I

    .line 78
    const v0, 0x7f0d007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMarginMax:I

    .line 80
    const v0, 0x7f0e0001

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMin:F

    .line 81
    const/high16 v0, 0x7f0e0000

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockYFractionMax:F

    .line 82
    const v0, 0x7f0d001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0d001a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMoreCardNotificationAmount:F

    .line 85
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mDensity:F

    .line 86
    return-void
.end method

.method public run(Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 9
    .param p1, "result"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY()I

    move-result v5

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 101
    .local v4, "y":I
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockYExpansionAdjustment()F

    move-result v0

    .line 102
    .local v0, "clockAdjustment":F
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getTopPaddingAdjMultiplier()F

    move-result v3

    .line 103
    .local v3, "topPaddingAdjMultiplier":F
    mul-float v5, v0, v3

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    .line 104
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v5

    iget v6, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    add-int v1, v5, v6

    .line 106
    .local v1, "clockNotificationsPadding":I
    add-int v2, v4, v1

    .line 107
    .local v2, "padding":I
    iput v4, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 108
    iget v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v5, v2

    iput v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 109
    iget v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v6, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockNotificationsPadding()I

    move-result v7

    add-int/2addr v7, v4

    iget v8, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockScale(III)F

    move-result v5

    iput v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    .line 112
    iget v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-direct {p0, v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(F)F

    move-result v5

    iput v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 114
    const/high16 v5, 0x42aa0000    # 85.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockOffset:I

    .line 115
    iget v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v6, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockOffset:I

    sub-int/2addr v5, v6

    iput v5, p1, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 117
    return-void
.end method

.method public setup(IIFIIIF)V
    .locals 0
    .param p1, "maxKeyguardNotifications"    # I
    .param p2, "maxPanelHeight"    # I
    .param p3, "expandedHeight"    # F
    .param p4, "notificationCount"    # I
    .param p5, "height"    # I
    .param p6, "keyguardStatusHeight"    # I
    .param p7, "emptyDragAmount"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxKeyguardNotifications:I

    .line 91
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxPanelHeight:I

    .line 92
    iput p3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mExpandedHeight:F

    .line 93
    iput p4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationCount:I

    .line 94
    iput p5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    .line 95
    iput p6, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 96
    iput p7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    .line 97
    return-void
.end method
