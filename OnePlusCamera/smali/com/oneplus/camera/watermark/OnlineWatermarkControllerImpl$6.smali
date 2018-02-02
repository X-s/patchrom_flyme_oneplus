.class Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;
.super Ljava/lang/Object;
.source "OnlineWatermarkControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

.field final synthetic val$task:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;
    .param p2, "val$task"    # Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;->val$task:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    const/16 v1, 0x2715

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z

    .line 740
    invoke-static {}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;->this$0:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;

    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;->val$task:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    invoke-static {v0, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-set0(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    .line 743
    invoke-static {}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-get0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 734
    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
