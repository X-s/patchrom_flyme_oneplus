.class Lcom/oneplus/camera/CountDownTimerImpl$2;
.super Lcom/oneplus/base/Handle;
.source "CountDownTimerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CountDownTimerImpl;->start(JI)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CountDownTimerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CountDownTimerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CountDownTimerImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/camera/CountDownTimerImpl$2;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/camera/CountDownTimerImpl$2;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/CountDownTimerImpl;->-get1(Lcom/oneplus/camera/CountDownTimerImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oneplus/camera/CountDownTimerImpl$2;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    sget-object v1, Lcom/oneplus/camera/CountDownTimerImpl;->EVENT_CANCELLED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/CountDownTimerImpl;->-wrap1(Lcom/oneplus/camera/CountDownTimerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/camera/CountDownTimerImpl$2;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    iget-object v1, p0, Lcom/oneplus/camera/CountDownTimerImpl$2;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/CountDownTimerImpl;->-get3(Lcom/oneplus/camera/CountDownTimerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/camera/CountDownTimerImpl$2;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    invoke-virtual {v0}, Lcom/oneplus/camera/CountDownTimerImpl;->resetComputeData()V

    .line 56
    :cond_0
    return-void
.end method
