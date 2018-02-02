.class public Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OptionsPanelIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable$1;
    }
.end annotation


# static fields
.field private static final ANIMATION_FPS:J = 0xaL

.field private static final INTERPOLATOR_END:Landroid/view/animation/Interpolator;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private m_AnimationRunning:Z

.field private m_AnimationStarted:Z

.field private final m_AnimationUpdate:Ljava/lang/Runnable;

.field private m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

.field private m_Decelerate:F

.field private m_Duration:J

.field private m_NextDrawable:Landroid/graphics/drawable/Drawable;

.field private m_OuterBoundHeight:I

.field private m_Progress:F

.field private m_StartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "OptionsPanelIconDrawable"

    sput-object v0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->INTERPOLATOR_END:Landroid/view/animation/Interpolator;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationStarted:Z

    .line 19
    iput-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationRunning:Z

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Duration:J

    .line 23
    const/16 v0, 0x6c

    iput v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_OuterBoundHeight:I

    .line 33
    new-instance v0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable$1;-><init>(Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;)V

    iput-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationUpdate:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method

.method private isRunning()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationRunning:Z

    return v0
.end method

.method private setBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 152
    .local v1, "outerBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 153
    .local v0, "left":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 154
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_OuterBoundHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Progress:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Decelerate:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_OuterBoundHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_OuterBoundHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Progress:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Decelerate:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationStarted:Z

    .line 62
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationStarted:Z

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationStarted:Z

    .line 85
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_StartTime:J

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationRunning:Z

    .line 170
    iget-wide v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_StartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_StartTime:J

    .line 172
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 168
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 123
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 130
    return-void
.end method

.method public startAnimation(Landroid/graphics/drawable/Drawable;J)V
    .locals 6
    .param p1, "nextdrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # J

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_StartTime:J

    .line 141
    iput-wide p2, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Duration:J

    .line 142
    iput-object p1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_NextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationUpdate:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->invalidateSelf()V

    .line 135
    return-void
.end method

.method protected updateAnimation()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_StartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Duration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Progress:F

    .line 50
    sget-object v0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->INTERPOLATOR_END:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Progress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Decelerate:F

    .line 52
    iget v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_Progress:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationRunning:Z

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_AnimationUpdate:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->invalidateSelf()V

    .line 47
    return-void
.end method

.method public updateImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iput-object p1, p0, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->m_CurrentDrawables:Landroid/graphics/drawable/Drawable;

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/OptionsPanelIconDrawable;->invalidateSelf()V

    .line 175
    return-void
.end method
