.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 316
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 350
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeList:Ljava/util/List;
    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2100(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeIndex:I
    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2000(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 329
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2200(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 330
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setSelectedCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2300(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 331
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_CaptureModeItemsContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2500(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ModeContainerPosition:F
    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2400(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 332
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    # setter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1902(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 335
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # getter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_GestureQueue:Ljava/util/Queue;
    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2600(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v2, 0x1

    const-wide/16 v4, 0xc8

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->shiftCaptureModesPanelVertical(ZJ)V
    invoke-static {v1, v2, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$2700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3$1;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 324
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    # setter for: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->m_ContainerAnimationState:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$1902(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 321
    return-void
.end method
