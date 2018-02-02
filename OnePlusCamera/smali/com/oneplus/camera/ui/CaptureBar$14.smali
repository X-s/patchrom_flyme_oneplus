.class Lcom/oneplus/camera/ui/CaptureBar$14;
.super Lcom/oneplus/camera/ui/BaseGestureHandler;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$14;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/BaseGestureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$14;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get32(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$14;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get32(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$14;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get1(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSingleTapUp() - Close second layer UI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$14;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get27(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 431
    const/4 v0, 0x1

    return v0
.end method
