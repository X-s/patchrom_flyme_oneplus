.class Lcom/oneplus/camera/ui/CaptureBar$3;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
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
    .line 483
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$3;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 488
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 489
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 490
    .local v1, "y":F
    cmpg-float v2, v0, v4

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$3;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap11(Lcom/oneplus/camera/ui/CaptureBar;)V

    .line 493
    return v3

    .line 490
    :cond_1
    cmpg-float v2, v1, v4

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 495
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 505
    :goto_0
    :pswitch_0
    return v3

    .line 498
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$3;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap10(Lcom/oneplus/camera/ui/CaptureBar;Z)V

    goto :goto_0

    .line 502
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$3;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap11(Lcom/oneplus/camera/ui/CaptureBar;)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
