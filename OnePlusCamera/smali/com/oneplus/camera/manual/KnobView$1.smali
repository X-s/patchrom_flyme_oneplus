.class Lcom/oneplus/camera/manual/KnobView$1;
.super Ljava/lang/Object;
.source "KnobView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/KnobView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_InitRadius:D

.field private m_IsRunning:Z

.field final synthetic this$0:Lcom/oneplus/camera/manual/KnobView;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/KnobView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private evaluateRotation(FF)D
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 92
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    # getter for: Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;
    invoke-static {v2}, Lcom/oneplus/camera/manual/KnobView;->access$000(Lcom/oneplus/camera/manual/KnobView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, v2

    neg-float v0, v2

    .line 93
    .local v0, "xx":F
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    # getter for: Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;
    invoke-static {v2}, Lcom/oneplus/camera/manual/KnobView;->access$000(Lcom/oneplus/camera/manual/KnobView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v2

    .line 96
    .local v1, "yy":F
    float-to-double v2, v1

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private isTooCloseToCenter(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 101
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    # getter for: Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;
    invoke-static {v2}, Lcom/oneplus/camera/manual/KnobView;->access$000(Lcom/oneplus/camera/manual/KnobView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    # getter for: Lcom/oneplus/camera/manual/KnobView;->m_RotationCenter:Landroid/graphics/PointF;
    invoke-static {v4}, Lcom/oneplus/camera/manual/KnobView;->access$000(Lcom/oneplus/camera/manual/KnobView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 102
    .local v0, "result":D
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 109
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView$1;->isTooCloseToCenter(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    # getter for: Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/manual/KnobView;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onActionDown() - Too close to center"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/manual/KnobView$1;->evaluateRotation(FF)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_InitRadius:D

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    .line 118
    iget-object v2, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v2}, Lcom/oneplus/camera/manual/KnobView;->onRotationStartFromTouch()V

    goto :goto_0
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-boolean v6, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    if-nez v6, :cond_0

    .line 143
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 127
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 128
    .local v5, "y":F
    invoke-direct {p0, v4, v5}, Lcom/oneplus/camera/manual/KnobView$1;->isTooCloseToCenter(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    # getter for: Lcom/oneplus/camera/manual/KnobView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/camera/manual/KnobView;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onActionMove() - Too close to center, stop running"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    .line 133
    iget-object v6, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v6}, Lcom/oneplus/camera/manual/KnobView;->onRotationEndFromTouch()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/oneplus/camera/manual/KnobView$1;->evaluateRotation(FF)D

    move-result-wide v0

    .line 139
    .local v0, "radius":D
    iget-wide v6, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_InitRadius:D

    sub-double v2, v0, v6

    .line 142
    .local v2, "radiusDiff":D
    iget-object v6, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v6, v2, v3}, Lcom/oneplus/camera/manual/KnobView;->onRotationUpdateFromTouch(D)V

    goto :goto_0
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    .line 153
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->onRotationEndFromTouch()V

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/manual/KnobView$1;->m_IsRunning:Z

    .line 165
    iget-object v0, p0, Lcom/oneplus/camera/manual/KnobView$1;->this$0:Lcom/oneplus/camera/manual/KnobView;

    invoke-virtual {v0}, Lcom/oneplus/camera/manual/KnobView;->onRotationEndFromTouch()V

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/oneplus/camera/manual/KnobView$1;->onActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/oneplus/camera/manual/KnobView$1;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/oneplus/camera/manual/KnobView$1;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
