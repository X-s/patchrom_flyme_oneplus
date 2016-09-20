.class Lcom/oneplus/camera/CountDownTimerImpl$1;
.super Ljava/lang/Object;
.source "CountDownTimerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CountDownTimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CountDownTimerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CountDownTimerImpl;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 22
    iget-object v2, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    sget-object v3, Lcom/oneplus/camera/CountDownTimer;->PROP_REMAINING_SECONDS:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    # --operator for: Lcom/oneplus/camera/CountDownTimerImpl;->m_CountdownSecs:J
    invoke-static {v4}, Lcom/oneplus/camera/CountDownTimerImpl;->access$006(Lcom/oneplus/camera/CountDownTimerImpl;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    # invokes: Lcom/oneplus/camera/CountDownTimerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v4}, Lcom/oneplus/camera/CountDownTimerImpl;->access$100(Lcom/oneplus/camera/CountDownTimerImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 24
    iget-object v2, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    # getter for: Lcom/oneplus/camera/CountDownTimerImpl;->m_CountdownSecs:J
    invoke-static {v2}, Lcom/oneplus/camera/CountDownTimerImpl;->access$000(Lcom/oneplus/camera/CountDownTimerImpl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 27
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    iget-object v3, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    # getter for: Lcom/oneplus/camera/CountDownTimerImpl;->m_ElapsedTime:J
    invoke-static {v3}, Lcom/oneplus/camera/CountDownTimerImpl;->access$200(Lcom/oneplus/camera/CountDownTimerImpl;)J

    move-result-wide v4

    sub-long v4, v0, v4

    sub-long/2addr v4, v6

    sub-long v4, v6, v4

    invoke-static {v2, p0, v4, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 28
    iget-object v2, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    # setter for: Lcom/oneplus/camera/CountDownTimerImpl;->m_ElapsedTime:J
    invoke-static {v2, v0, v1}, Lcom/oneplus/camera/CountDownTimerImpl;->access$202(Lcom/oneplus/camera/CountDownTimerImpl;J)J

    .line 33
    .end local v0    # "currentTime":J
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/CountDownTimerImpl$1;->this$0:Lcom/oneplus/camera/CountDownTimerImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/CountDownTimerImpl;->resetComputeData()V

    goto :goto_0
.end method
