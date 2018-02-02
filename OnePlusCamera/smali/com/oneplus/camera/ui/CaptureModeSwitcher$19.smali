.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setupPanel()V
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
    .line 1498
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$19;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get10(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 1507
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1509
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
