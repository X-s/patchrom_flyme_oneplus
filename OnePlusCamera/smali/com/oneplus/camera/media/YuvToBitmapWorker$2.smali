.class Lcom/oneplus/camera/media/YuvToBitmapWorker$2;
.super Landroid/os/Handler;
.source "YuvToBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/YuvToBitmapWorker;-><init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/YuvToBitmapWorker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;->this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;->this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/oneplus/camera/media/YuvToBitmapWorker;->convert([BII)V
    invoke-static {v1, v0, v2, v3}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->access$100(Lcom/oneplus/camera/media/YuvToBitmapWorker;[BII)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker$2;->this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    # invokes: Lcom/oneplus/camera/media/YuvToBitmapWorker;->quitWorkerThread()V
    invoke-static {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->access$200(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
