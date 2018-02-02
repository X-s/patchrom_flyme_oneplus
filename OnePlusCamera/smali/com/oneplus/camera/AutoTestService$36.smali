.class Lcom/oneplus/camera/AutoTestService$36;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->sendTouchEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$e:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$36;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$36;->val$e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$36;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get12(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$36;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get12(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/ui/GestureDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$36;->val$e:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 1845
    :cond_0
    return-void
.end method
