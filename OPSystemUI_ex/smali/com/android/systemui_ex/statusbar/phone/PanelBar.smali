.class public Lcom/android/systemui_ex/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanelExpandedFractionSum:F

.field mPanelHolder:Lcom/android/systemui_ex/statusbar/phone/PanelHolder;

.field mPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/phone/PanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mState:I

    .line 55
    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 33
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 1
    .param p1, "pv"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setBar(Lcom/android/systemui_ex/statusbar/phone/PanelBar;)V

    .line 65
    return-void
.end method

.method public collapseAllPanels(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "waiting":Z
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 194
    .local v1, "pv":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->collapse(Z)V

    .line 196
    const/4 v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->resetViews()V

    .line 199
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 200
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setVisibility(I)V

    .line 201
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->cancelPeek()V

    goto :goto_0

    .line 205
    .end local v1    # "pv":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_2

    .line 208
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->go(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 211
    :cond_2
    return-void
.end method

.method public go(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mState:I

    .line 51
    return-void
.end method

.method public onAllPanelsCollapsed()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "onAllPanelsCollapsed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 60
    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0
    .param p1, "openPanel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 223
    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->panelsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 101
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v3

    .line 133
    :goto_0
    return v2

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui_ex/statusbar/phone/PanelView;

    move-result-object v1

    .line 110
    .local v1, "panel":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    if-nez v1, :cond_2

    .line 112
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: no panel for touch at (%d,%d)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 120
    .local v0, "enabled":Z
    if-nez v0, :cond_3

    .line 122
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v5, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 130
    .end local v0    # "enabled":Z
    .end local v1    # "panel":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 133
    .local v2, "result":Z
    :cond_5
    goto :goto_0
.end method

.method public onTrackingStarted(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 2
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 226
    const-string v0, "onTrackingStarted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTracking:Z

    .line 232
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)V
    .locals 3
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p2, "expand"    # Z

    .prologue
    const/4 v2, 0x0

    .line 235
    const-string v0, "onTrackingStopped"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTracking:Z

    .line 237
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui_ex/statusbar/phone/PanelView;FZ)V
    .locals 11
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .param p2, "frac"    # F
    .param p3, "expanded"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "fullyClosed":Z
    const/4 v1, 0x0

    .line 158
    .local v1, "fullyOpenedPanel":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    iput v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 159
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 160
    .local v3, "pv":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    move v5, v9

    .line 161
    .local v5, "visible":Z
    :goto_1
    if-eqz v5, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v3, v6}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->setVisibility(I)V

    .line 163
    if-eqz p3, :cond_0

    .line 164
    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mState:I

    if-nez v6, :cond_1

    .line 165
    invoke-virtual {p0, v9}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->go(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 168
    :cond_1
    const/4 v0, 0x0

    .line 169
    invoke-virtual {v3}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 170
    .local v4, "thisFrac":F
    iget v10, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_4

    move v6, v4

    :goto_3
    add-float/2addr v6, v10

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 172
    if-ne p1, v3, :cond_0

    .line 173
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-nez v6, :cond_0

    move-object v1, p1

    goto :goto_0

    .end local v4    # "thisFrac":F
    .end local v5    # "visible":Z
    :cond_2
    move v5, v7

    .line 160
    goto :goto_1

    .line 161
    .restart local v5    # "visible":Z
    :cond_3
    const/16 v6, 0x8

    goto :goto_2

    .restart local v4    # "thisFrac":F
    :cond_4
    move v6, v8

    .line 170
    goto :goto_3

    .line 177
    .end local v3    # "pv":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .end local v4    # "thisFrac":F
    .end local v5    # "visible":Z
    :cond_5
    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 178
    if-eqz v1, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_7

    .line 179
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->go(I)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 189
    :cond_6
    :goto_4
    return-void

    .line 181
    :cond_7
    if-eqz v0, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_6

    iget v6, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mState:I

    if-eqz v6, :cond_6

    .line 182
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->go(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_4
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui_ex/statusbar/phone/PanelView;
    .locals 4
    .param p1, "touch"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    return-object v1
.end method

.method public setPanelHolder(Lcom/android/systemui_ex/statusbar/phone/PanelHolder;)V
    .locals 6
    .param p1, "ph"    # Lcom/android/systemui_ex/statusbar/phone/PanelHolder;

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 69
    sget-object v3, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "setPanelHolder: null PanelHolder"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelHolder;->setBar(Lcom/android/systemui_ex/statusbar/phone/PanelBar;)V

    .line 73
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui_ex/statusbar/phone/PanelHolder;

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    .line 75
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    if-eqz v3, :cond_2

    .line 78
    check-cast v2, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 75
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startOpeningPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 4
    .param p1, "panel"    # Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 140
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui_ex/statusbar/phone/PanelHolder;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PanelHolder;->setSelectedPanel(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V

    .line 141
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/phone/PanelView;

    .line 142
    .local v1, "pv":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    if-eq v1, p1, :cond_0

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->collapse(Z)V

    goto :goto_0

    .line 146
    .end local v1    # "pv":Lcom/android/systemui_ex/statusbar/phone/PanelView;
    :cond_1
    return-void
.end method
