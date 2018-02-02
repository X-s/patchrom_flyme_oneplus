.class public final Lcom/oneplus/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPx(Landroid/content/res/Resources;F)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "dp"    # F

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 48
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 63
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static rotate(Landroid/view/View;FJ)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "toDegrees"    # F
    .param p2, "duration"    # J

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oneplus/widget/ViewUtils;->rotate(Landroid/view/View;FJLandroid/view/animation/Interpolator;)V

    .line 74
    return-void
.end method

.method public static rotate(Landroid/view/View;FJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "toDegrees"    # F
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 90
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 93
    cmp-long v1, p2, v2

    if-lez v1, :cond_2

    .line 95
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    if-eqz p4, :cond_1

    .line 97
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 87
    return-void

    .line 101
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 113
    return-void
.end method

.method public static setMargins(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "margins"    # I

    .prologue
    .line 130
    invoke-static {p0, p1, p1, p1, p1}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 128
    return-void
.end method

.method public static setMargins(Landroid/view/View;IIII)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 147
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 149
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    .local v0, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 151
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 152
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 153
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 142
    .end local v0    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 170
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 165
    return-void
.end method

.method public static setVisibility(Landroid/view/View;ZJ)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isVisible"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, v4

    .line 184
    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 182
    return-void
.end method

.method public static setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isVisible"    # Z
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 197
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    .line 195
    return-void
.end method

.method public static setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isVisible"    # Z
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "callback"    # Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 211
    if-nez p0, :cond_0

    .line 212
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 214
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_6

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    cmp-long v1, p2, v6

    if-ltz v1, :cond_1

    .line 219
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 220
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_0
    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 239
    if-eqz p4, :cond_2

    .line 240
    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 241
    :cond_2
    if-eqz p5, :cond_3

    .line 243
    new-instance v1, Lcom/oneplus/widget/ViewUtils$1;

    invoke-direct {v1, p5, p0}, Lcom/oneplus/widget/ViewUtils$1;-><init>(Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    :cond_4
    return-void

    .line 223
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_5
    return-void

    .line 227
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 229
    cmp-long v1, p2, v6

    if-ltz v1, :cond_7

    .line 230
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 231
    :cond_7
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 234
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_8
    return-void
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 275
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 270
    return-void
.end method
