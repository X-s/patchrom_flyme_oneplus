.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;
.super Lcom/oneplus/camera/ui/BaseGestureHandler;
.source "CaptureModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BaseGestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    return-void
.end method

.method public onGestureStart(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->isIntersectStatusBar(FF)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 114
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_IsCaptureModesPanelOpened:Z
    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 117
    .local v0, "diffX":F
    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$base$Rotation:[I

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$200(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 132
    :cond_2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :pswitch_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    goto :goto_0

    .line 125
    :pswitch_1
    cmpg-float v2, v0, v4

    if-gez v2, :cond_2

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$300(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onScroll() - Inverse portrait is not supported"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v1, 0x2715

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 208
    return v2
.end method

.method public onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSlideDown() - E1: "

    const-string v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->canSlideCaptureMode()Z
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_DOWN:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchCaptureMode(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$600(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSlideLeft() - E1: "

    const-string v5, ", E2: "

    invoke-static {v3, v4, p1, v5, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->canSlideCaptureMode()Z
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$800(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 152
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSlideLeft() - Rotation is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 156
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v3, 0x2715

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 167
    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :goto_0
    return v1

    .line 159
    .restart local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :pswitch_1
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v4, 0x0

    const-wide/16 v6, 0xc8

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V
    invoke-static {v3, v4, v6, v7, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$900(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    goto :goto_0

    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_0
    move v1, v2

    .line 167
    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSlideRight() - E1: "

    const-string v5, ", E2: "

    invoke-static {v3, v4, p1, v5, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->canSlideCaptureMode()Z
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1200(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 176
    .local v0, "rotation":Lcom/oneplus/base/Rotation;
    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$13;->$SwitchMap$com$oneplus$base$Rotation:[I

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 186
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1300(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSlideRight() - Rotation is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 180
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v4, 0x0

    const-wide/16 v6, 0xc8

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->openCaptureModesPanel(Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V
    invoke-static {v3, v4, v6, v7, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$900(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    .line 191
    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :goto_0
    return v1

    .line 183
    .restart local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/16 v3, 0x2715

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    goto :goto_0

    .end local v0    # "rotation":Lcom/oneplus/base/Rotation;
    :cond_0
    move v1, v2

    .line 191
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSlideUp() - E1: "

    const-string v2, ", E2: "

    invoke-static {v0, v1, p1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->canSlideCaptureMode()Z
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$1;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;->SLIDING_UP:Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->switchCaptureMode(Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$600(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$GestureState;)V

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
