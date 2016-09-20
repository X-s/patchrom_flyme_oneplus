.class Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;
.super Landroid/os/Handler;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 597
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/oneplus/camera/io/MediaSaveTask;

    move-object v8, v10

    check-cast v8, Lcom/oneplus/camera/io/MediaSaveTask;

    .line 600
    .local v8, "task":Lcom/oneplus/camera/io/MediaSaveTask;
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v11, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_ADDED:Lcom/oneplus/base/EventKey;

    const/4 v12, 0x1

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    invoke-static {v10, v11, v8, v12}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    goto :goto_0

    .line 604
    .end local v8    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    :pswitch_1
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1500(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;

    .line 605
    .local v0, "args":Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;
    if-nez v0, :cond_1

    .line 606
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    const-string v11, "MESSAGE_GET_BITMAP args == null"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :goto_1
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1500(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 645
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v11, v11, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x3ec

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 608
    :cond_1
    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Path:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->access$2200(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, "path":Ljava/lang/String;
    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_callback:Lcom/oneplus/camera/io/FileManager$PhotoCallback;
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->access$2300(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)Lcom/oneplus/camera/io/FileManager$PhotoCallback;

    move-result-object v2

    .line 610
    .local v2, "callback":Lcom/oneplus/camera/io/FileManager$PhotoCallback;
    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Position:I
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->access$2400(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)I

    move-result v7

    .line 611
    .local v7, "position":I
    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->m_Width:I
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->access$2500(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)I

    move-result v9

    .line 612
    .local v9, "width":I
    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->mHeight:I
    invoke-static {v0}, Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;->access$2600(Lcom/oneplus/camera/io/FileManagerImpl$BitmapArgs;)I

    move-result v3

    .line 613
    .local v3, "height":I
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->isImage(Ljava/lang/String;)Z
    invoke-static {v10, v6}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1200(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v4

    .line 614
    .local v4, "isImage":Z
    if-nez v4, :cond_2

    const/4 v5, 0x1

    .line 617
    .local v5, "isVideo":Z
    :goto_2
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->checkInterrupt(I)Z
    invoke-static {v10, v7}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->access$2700(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 618
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInterrupt before decode : position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " m_Current: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I
    invoke-static {v12}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->access$000(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v2, v10, v5, v11}, Lcom/oneplus/camera/io/FileManager$PhotoCallback;->onBitmapLoad(Landroid/graphics/Bitmap;ZZ)V

    .line 620
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1500(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 621
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v11, v11, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x3ec

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 614
    .end local v5    # "isVideo":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 626
    .restart local v5    # "isVideo":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 627
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v10, v6, v9, v3}, Lcom/oneplus/camera/io/FileManagerImpl;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 632
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->checkInterrupt(I)Z
    invoke-static {v10, v7}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->access$2700(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 633
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInterrupt after decode : position: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " m_Current: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I
    invoke-static {v12}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->access$000(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {v2, v10, v5, v11}, Lcom/oneplus/camera/io/FileManager$PhotoCallback;->onBitmapLoad(Landroid/graphics/Bitmap;ZZ)V

    .line 635
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1500(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 636
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v11, v11, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x3ec

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 629
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v10, 0x2

    invoke-static {v6, v10}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 641
    :cond_5
    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bitmap: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/4 v10, 0x0

    invoke-interface {v2, v1, v5, v10}, Lcom/oneplus/camera/io/FileManager$PhotoCallback;->onBitmapLoad(Landroid/graphics/Bitmap;ZZ)V

    goto/16 :goto_1

    .line 597
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
