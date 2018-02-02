.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;-><init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/oneplus/base/Rotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 420
    :cond_1
    return v3

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->-set0(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;Z)Z

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v1, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 407
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->-set0(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;Z)Z

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v1, v1, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_1

    .line 411
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    iget-object v0, v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem$1;->this$1:Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap13(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$CaptureModeItem;)V

    .line 414
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
