.class public Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ExpandableBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-drawable-ExpandableBackgroundDrawable$StateSwitchesValues:[I = null

.field private static final ANIMATION_DURATION:J = 0x12cL

.field private static final COLLAPSING_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final EXPANDING_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private m_AnimationStartTime:J

.field private m_EndAction:Ljava/lang/Runnable;

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_PivotX:F

.field private m_PivotY:F

.field private m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;


# direct methods
.method private static synthetic -getcom-oneplus-camera-drawable-ExpandableBackgroundDrawable$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->-com-oneplus-camera-drawable-ExpandableBackgroundDrawable$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->-com-oneplus-camera-drawable-ExpandableBackgroundDrawable$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->values()[Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->-com-oneplus-camera-drawable-ExpandableBackgroundDrawable$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->EXPANDING_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 22
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->COLLAPSING_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 31
    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 49
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;-><init>()V

    .line 61
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    return-void
.end method

.method private drawExpandingBackground(Landroid/graphics/Canvas;F)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "expandingProgress"    # F

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 165
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v6, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float v3, v6, v7

    .line 166
    .local v3, "distanceToTL":F
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    add-float v4, v6, v7

    .line 167
    .local v4, "distanceToTR":F
    iget v6, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    sub-float/2addr v7, v8

    add-float v1, v6, v7

    .line 168
    .local v1, "distanceToBL":F
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    sub-float/2addr v7, v8

    add-float v2, v6, v7

    .line 170
    .local v2, "distanceToBR":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 169
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 173
    .local v5, "radius":F
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_0

    .line 174
    return-void

    .line 175
    :cond_0
    iget v6, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    iget v7, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    mul-float v8, v5, p2

    iget-object v9, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    return-void
.end method


# virtual methods
.method public collapse(FFZ)V
    .locals 1
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->collapse(FFZLjava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public collapse(FFZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "animate"    # Z
    .param p4, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 86
    iput p1, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    .line 87
    iput p2, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    .line 88
    iput-object p4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_EndAction:Ljava/lang/Runnable;

    .line 89
    if-eqz p3, :cond_2

    .line 91
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    if-ne v0, v1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->invalidateSelf()V

    .line 84
    return-void

    .line 98
    :cond_2
    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v12, 0x12c

    const-wide/16 v10, 0x0

    const/high16 v8, 0x43960000    # 300.0f

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->-getcom-oneplus-camera-drawable-ExpandableBackgroundDrawable$StateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    invoke-virtual {v5}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    sub-long v2, v4, v6

    .line 115
    .local v2, "duration":J
    cmp-long v4, v2, v12

    if-gez v4, :cond_1

    .line 117
    sget-object v4, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->EXPANDING_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    long-to-float v5, v2

    div-float/2addr v5, v8

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 118
    .local v1, "progress":F
    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->drawExpandingBackground(Landroid/graphics/Canvas;F)V

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->invalidateSelf()V

    goto :goto_0

    .line 122
    .end local v1    # "progress":F
    :cond_1
    sget-object v4, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 123
    iput-wide v10, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    .line 128
    .end local v2    # "duration":J
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    iget-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_EndAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_EndAction:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 136
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    sub-long v2, v4, v6

    .line 137
    .restart local v2    # "duration":J
    cmp-long v4, v2, v12

    if-gez v4, :cond_2

    .line 139
    sget-object v4, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->COLLAPSING_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    long-to-float v5, v2

    div-float/2addr v5, v8

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 140
    .restart local v1    # "progress":F
    invoke-direct {p0, p1, v1}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->drawExpandingBackground(Landroid/graphics/Canvas;F)V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->invalidateSelf()V

    goto :goto_0

    .line 146
    .end local v1    # "progress":F
    :cond_2
    sget-object v4, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->COLLAPSED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 147
    iput-wide v10, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    .line 153
    .end local v2    # "duration":J
    :pswitch_3
    iget-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_EndAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_EndAction:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public expand(FFZ)V
    .locals 1
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->expand(FFZLjava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public expand(FFZLjava/lang/Runnable;)V
    .locals 2
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "animate"    # Z
    .param p4, "endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    iput p1, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotX:F

    .line 201
    iput p2, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_PivotY:F

    .line 202
    iput-object p4, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_EndAction:Ljava/lang/Runnable;

    .line 203
    if-eqz p3, :cond_2

    .line 205
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    sget-object v1, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    if-ne v0, v1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 207
    :cond_1
    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDING:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->invalidateSelf()V

    .line 198
    return-void

    .line 212
    :cond_2
    sget-object v0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;->EXPANDED:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    iput-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_State:Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable$State;

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_AnimationStartTime:J

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 237
    return-void
.end method
