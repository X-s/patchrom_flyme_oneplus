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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 357
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get17(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 358
    .local v0, "capturemode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->PROP_SWITCH_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    sget-object v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;->SLIDE_ON_CAPTURE_MODES_PANEL:Lcom/oneplus/camera/ui/CaptureModeSwitcher$SwitchCaptureMode;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 359
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    .line 360
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get5(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;F)F

    .line 361
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get16(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 362
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 365
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v2, 0x1

    const-wide/16 v4, 0xc8

    invoke-static {v1, v2, v4, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap16(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    .line 355
    :goto_0
    return-void

    .line 369
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
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$3;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->STARTED:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    .line 346
    return-void
.end method
