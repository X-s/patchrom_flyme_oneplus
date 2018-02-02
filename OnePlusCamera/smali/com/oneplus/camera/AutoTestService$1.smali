.class Lcom/oneplus/camera/AutoTestService$1;
.super Landroid/os/Handler;
.source "AutoTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AutoTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$1;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/CaptureHandle;

    .line 179
    .local v0, "handle":Lcom/oneplus/camera/CaptureHandle;
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService$1;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v4}, Lcom/oneplus/camera/AutoTestService;->-get1(Lcom/oneplus/camera/AutoTestService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/AutoTestService$BurstInfo;

    .line 180
    .local v1, "info":Lcom/oneplus/camera/AutoTestService$BurstInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/camera/AutoTestService$BurstInfo;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService$1;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v4}, Lcom/oneplus/camera/AutoTestService;->-get0(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "uiHandle$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/CaptureHandle;

    .line 184
    .local v2, "uiHandle":Lcom/oneplus/camera/CaptureHandle;
    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getInternalCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/oneplus/camera/CaptureHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService$1;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v4}, Lcom/oneplus/camera/AutoTestService;->-get0(Lcom/oneplus/camera/AutoTestService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "uiHandle":Lcom/oneplus/camera/CaptureHandle;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/AutoTestService$1;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v4}, Lcom/oneplus/camera/AutoTestService;->-get1(Lcom/oneplus/camera/AutoTestService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
