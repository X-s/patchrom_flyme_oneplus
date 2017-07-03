.class public Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SimpleTransitionDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$1;,
        Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;
    }
.end annotation


# instance fields
.field private m_Alpha:I

.field private m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private m_CurrentDrawableAlpha:I

.field private m_NextDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_ScaleType:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

.field private m_TransitionDuration:J

.field private m_TransitionStartTime:J


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;-><init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "scaleType"    # Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;
    .param p2, "initialDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v0, 0xff

    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    iput v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_Alpha:I

    .line 18
    iput v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No scale type specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_ScaleType:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    .line 65
    iput-object p2, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    return-void
.end method

.method private setupBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outerBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 154
    .local v4, "outerWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 155
    .local v3, "outerHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 156
    .local v1, "innerWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 157
    .local v0, "innerHeight":I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 160
    sget-object v9, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$1;->$SwitchMap$com$oneplus$gallery$drawable$SimpleTransitionDrawable$ScaleType:[I

    iget-object v10, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_ScaleType:Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;

    invoke-virtual {v10}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 181
    :goto_1
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int v10, v4, v1

    div-int/lit8 v10, v10, 0x2

    add-int v2, v9, v10

    .line 182
    .local v2, "left":I
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v10, v3, v0

    div-int/lit8 v10, v10, 0x2

    add-int v8, v9, v10

    .line 183
    .local v8, "top":I
    add-int v9, v2, v1

    add-int v10, v8, v0

    invoke-virtual {p1, v2, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 164
    .end local v2    # "left":I
    .end local v8    # "top":I
    :pswitch_0
    int-to-float v9, v4

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 165
    .local v6, "ratioX":F
    int-to-float v9, v3

    int-to-float v10, v0

    div-float v7, v9, v10

    .line 166
    .local v7, "ratioY":F
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 167
    .local v5, "ratio":F
    int-to-float v9, v1

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 168
    int-to-float v9, v0

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 169
    goto :goto_1

    .line 173
    .end local v5    # "ratio":F
    .end local v6    # "ratioX":F
    .end local v7    # "ratioY":F
    :pswitch_1
    int-to-float v9, v4

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 174
    .restart local v6    # "ratioX":F
    int-to-float v9, v3

    int-to-float v10, v0

    div-float v7, v9, v10

    .line 175
    .restart local v7    # "ratioY":F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 176
    .restart local v5    # "ratio":F
    int-to-float v9, v1

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 177
    int-to-float v9, v0

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 178
    goto :goto_1

    .line 186
    .end local v5    # "ratio":F
    .end local v6    # "ratioX":F
    .end local v7    # "ratioY":F
    :cond_2
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    iget v4, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    .line 75
    .local v4, "prevCurrentAlpha":I
    const/4 v2, 0x0

    .line 76
    .local v2, "invalidate":Z
    iget-wide v6, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    .line 77
    const/16 v5, 0xff

    iput v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    .line 96
    :goto_0
    const/16 v5, 0x80

    if-lt v4, v5, :cond_0

    iget v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->invalidateSelf()V

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 103
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 109
    iget v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    rsub-int v3, v5, 0xff

    .line 110
    .local v3, "nextDrawableAlpha":I
    if-lez v3, :cond_2

    .line 112
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_Alpha:I

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    int-to-float v7, v3

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 113
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    .end local v3    # "nextDrawableAlpha":I
    :cond_2
    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->invalidateSelf()V

    .line 120
    :cond_3
    return-void

    .line 80
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionStartTime:J

    sub-long v0, v6, v8

    .line 81
    .local v0, "duration":J
    iget-wide v6, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionDuration:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_5

    .line 83
    const-wide v6, 0x406fe00000000000L    # 255.0

    const-wide v8, 0x406fe00000000000L    # 255.0

    long-to-double v10, v0

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionDuration:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    :cond_5
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionStartTime:J

    .line 89
    iget-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    const/16 v5, 0xff

    iput v5, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->setupBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->setupBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 129
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 130
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_Alpha:I

    .line 138
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 144
    return-void
.end method

.method public startTransition(Landroid/graphics/drawable/Drawable;J)V
    .locals 2
    .param p1, "nextDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # J

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    const/16 v0, 0xff

    iput v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_CurrentDrawableAlpha:I

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionStartTime:J

    .line 206
    iput-wide p2, p0, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->m_TransitionDuration:J

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->setupBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/gallery/drawable/SimpleTransitionDrawable;->invalidateSelf()V

    goto :goto_0
.end method
