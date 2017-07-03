.class public Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;
.super Landroid/view/ViewGroup;
.source "PhotoEditorPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;
    }
.end annotation


# static fields
.field public static final DURATION_LAYOUT_ANIMATION:J = 0x12cL

.field private static final INTERPOLATOR_LAYOUT_ANIMATION:Landroid/animation/TimeInterpolator;

.field private static final INTERVAL_LAYOUT_ANIMATION:J = 0xfL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_AnimateLayoutRunnable:Ljava/lang/Runnable;

.field private m_CurrentPaddingBottom:I

.field private m_CurrentPaddingLeft:I

.field private m_CurrentPaddingRight:I

.field private m_CurrentPaddingTop:I

.field private m_IsLayoutAnimationEnabled:Z

.field private m_IsPaddingAnimationStarted:Z

.field private m_LayoutAnimationStartTime:J

.field private m_PaddingAnimationListener:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

.field private m_SrcPaddingBottom:I

.field private m_SrcPaddingLeft:I

.field private m_SrcPaddingRight:I

.field private m_SrcPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const-class v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->INTERPOLATOR_LAYOUT_ANIMATION:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsLayoutAnimationEnabled:Z

    .line 48
    new-instance v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$1;-><init>(Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;)V

    iput-object v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_AnimateLayoutRunnable:Ljava/lang/Runnable;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->setClipToPadding(Z)V

    .line 77
    return-void
.end method

.method private onPaddingAnimationEnd()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_PaddingAnimationListener:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsPaddingAnimationStarted:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_PaddingAnimationListener:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;->onAnimationEnd()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsPaddingAnimationStarted:Z

    .line 170
    :cond_0
    return-void
.end method

.method private onPaddingAnimationStart()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_PaddingAnimationListener:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsPaddingAnimationStarted:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_PaddingAnimationListener:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;->onAnimationStart()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsPaddingAnimationStarted:Z

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public isLayoutAnimationEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsLayoutAnimationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 96
    .local v9, "handler":Landroid/os/Handler;
    if-nez v9, :cond_1

    .line 159
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getPaddingLeft()I

    move-result v5

    .line 101
    .local v5, "destPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getPaddingTop()I

    move-result v7

    .line 102
    .local v7, "destPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getPaddingRight()I

    move-result v6

    .line 103
    .local v6, "destPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getPaddingBottom()I

    move-result v4

    .line 106
    .local v4, "destPaddingBottom":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_AnimateLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_LayoutAnimationStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_LayoutAnimationStartTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 110
    .local v8, "duration":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x12c

    cmp-long v13, v14, v16

    if-gez v13, :cond_3

    .line 112
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-float v13, v14

    const/high16 v14, 0x43960000    # 300.0f

    div-float v11, v13, v14

    .line 113
    .local v11, "progress":F
    sget-object v13, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->INTERPOLATOR_LAYOUT_ANIMATION:Landroid/animation/TimeInterpolator;

    if-eqz v13, :cond_2

    .line 114
    sget-object v13, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->INTERPOLATOR_LAYOUT_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-interface {v13, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v11

    .line 115
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingLeft:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingLeft:I

    sub-int v14, v5, v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingLeft:I

    .line 116
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingTop:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingTop:I

    sub-int v14, v7, v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingTop:I

    .line 117
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingRight:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingRight:I

    sub-int v14, v6, v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingRight:I

    .line 118
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingBottom:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingBottom:I

    sub-int v14, v4, v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingBottom:I

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_AnimateLayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0xf

    invoke-virtual {v9, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .end local v8    # "duration":Ljava/lang/Long;
    .end local v11    # "progress":F
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingLeft:I

    add-int p2, p2, v13

    .line 146
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingTop:I

    add-int p3, p3, v13

    .line 147
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingRight:I

    sub-int p4, p4, v13

    .line 148
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingBottom:I

    sub-int p5, p5, v13

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getChildCount()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_0

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 157
    .local v12, "view":Landroid/view/View;
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 153
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 123
    .end local v10    # "i":I
    .end local v12    # "view":Landroid/view/View;
    .restart local v8    # "duration":Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingLeft:I

    .line 124
    move-object/from16 v0, p0

    iput v7, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingTop:I

    .line 125
    move-object/from16 v0, p0

    iput v6, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingRight:I

    .line 126
    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingBottom:I

    .line 127
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_LayoutAnimationStartTime:J

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->onPaddingAnimationEnd()V

    goto :goto_0

    .line 135
    .end local v8    # "duration":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iput v5, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingLeft:I

    .line 136
    move-object/from16 v0, p0

    iput v7, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingTop:I

    .line 137
    move-object/from16 v0, p0

    iput v6, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingRight:I

    .line 138
    move-object/from16 v0, p0

    iput v4, v0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingBottom:I

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->onPaddingAnimationEnd()V

    goto :goto_0
.end method

.method public setLayoutAnimationEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsLayoutAnimationEnabled:Z

    .line 191
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingLeft:I

    iput v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingLeft:I

    .line 200
    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingTop:I

    iput v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingTop:I

    .line 201
    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingRight:I

    iput v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingRight:I

    .line 202
    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingBottom:I

    iput v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_SrcPaddingBottom:I

    .line 203
    iget-boolean v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_IsLayoutAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 204
    iput-wide v2, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_LayoutAnimationStartTime:J

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->onPaddingAnimationStart()V

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->requestLayout()V

    .line 216
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingLeft:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingTop:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingRight:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_CurrentPaddingBottom:I

    if-eq p4, v0, :cond_2

    .line 206
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_LayoutAnimationStartTime:J

    goto :goto_0

    .line 208
    :cond_2
    iput-wide v2, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_LayoutAnimationStartTime:J

    goto :goto_0
.end method

.method public setPaddingAnimationListener(Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer;->m_PaddingAnimationListener:Lcom/oneplus/gallery/widget/PhotoEditorPreviewContainer$PaddingAnimationListener;

    .line 223
    return-void
.end method
