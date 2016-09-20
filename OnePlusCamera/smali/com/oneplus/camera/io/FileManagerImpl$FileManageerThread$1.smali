.class Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;
.super Landroid/os/Handler;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 434
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    const/4 v9, 0x1

    # setter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->m_Handling:Z
    invoke-static {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$502(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Z)Z

    .line 435
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 559
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->hasMessage()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/base/component/Component;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/base/component/Component;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/base/component/ComponentState;->RELEASED:Lcom/oneplus/base/component/ComponentState;

    if-ne v8, v9, :cond_2

    .line 562
    :cond_1
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileThread:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$2100(Lcom/oneplus/camera/io/FileManagerImpl;)Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->quitSafely()Z

    .line 564
    :cond_2
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    const/4 v9, 0x0

    # setter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->m_Handling:Z
    invoke-static {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$502(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Z)Z

    .line 565
    return-void

    .line 438
    :pswitch_0
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MESSAGE_SAVE_MEDIA  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/io/MediaSaveTask;

    .line 440
    .local v7, "task":Lcom/oneplus/camera/io/MediaSaveTask;
    if-nez v7, :cond_3

    .line 441
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "no file save task"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 443
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 448
    :cond_3
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->saveMediaToFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 449
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MESSAGE_SAVE_MEDIA  success "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$900(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Ljava/io/File;

    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 451
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    .line 453
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    :goto_1
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 462
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    goto/16 :goto_0

    .line 456
    :cond_4
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 457
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    :cond_5
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    goto :goto_1

    .line 466
    .end local v7    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    :pswitch_1
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MESSAGE_INSERT_MEDIA  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->insertToggle:Z
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1100(Lcom/oneplus/camera/io/FileManagerImpl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->insertToggle:Z
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1100(Lcom/oneplus/camera/io/FileManagerImpl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 470
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 471
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 474
    :cond_6
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/io/MediaSaveTask;

    .line 475
    .restart local v7    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    if-nez v7, :cond_7

    .line 476
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "no file save task"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 478
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 482
    :cond_7
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->insertToMediaStore()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 483
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "filePath":Ljava/lang/String;
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->isImage(Ljava/lang/String;)Z
    invoke-static {v8, v3}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1200(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->isVideo(Ljava/lang/String;)Z
    invoke-static {v8, v3}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1300(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 485
    :cond_8
    invoke-static {v3}, Lcom/oneplus/camera/media/MediaListManager;->notifyFileAdded(Ljava/lang/String;)V

    .line 486
    :cond_9
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1400(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    .line 491
    .end local v3    # "filePath":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_SaveQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$700(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 492
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 497
    :cond_a
    :goto_3
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1500(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 498
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DecodeBitmapHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1600(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3ec

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 489
    :cond_b
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z
    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    goto :goto_2

    .line 493
    :cond_c
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 494
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$400(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 503
    .end local v7    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 505
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->isImage(Ljava/lang/String;)Z
    invoke-static {v8, v4}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1200(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 509
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 513
    .local v1, "deleteUri":Landroid/net/Uri;
    :goto_4
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleMessage() - Delete file: "

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 515
    invoke-static {v4}, Lcom/oneplus/camera/media/MediaListManager;->notifyFileDeleted(Ljava/lang/String;)V

    .line 516
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 517
    .local v0, "deleteCount":I
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleMessage() - Delete count: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    .end local v0    # "deleteCount":I
    :cond_d
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 525
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".dng"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "rawFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v5, "rawFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 529
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() - Delete raw file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 532
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "external"

    invoke-static {v9}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "_data= ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 533
    .restart local v0    # "deleteCount":I
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleMessage() - Delete raw file count: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    .end local v0    # "deleteCount":I
    .end local v5    # "rawFile":Ljava/io/File;
    .end local v6    # "rawFilePath":Ljava/lang/String;
    :cond_e
    :goto_5
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILE_DELETED:Lcom/oneplus/base/EventKey;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z
    invoke-static {v8, v9, v4}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1700(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z

    .line 543
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    goto/16 :goto_0

    .line 511
    .end local v1    # "deleteUri":Landroid/net/Uri;
    :cond_f
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1    # "deleteUri":Landroid/net/Uri;
    goto/16 :goto_4

    .line 537
    .restart local v5    # "rawFile":Ljava/io/File;
    .restart local v6    # "rawFilePath":Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->access$600(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleMessage() - delete raw file failed"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 548
    .end local v1    # "deleteUri":Landroid/net/Uri;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "rawFile":Ljava/io/File;
    .end local v6    # "rawFilePath":Ljava/lang/String;
    :pswitch_3
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$900(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 549
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileUris:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1400(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 550
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_DefaultFolder:Ljava/io/File;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 551
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_FileList:Ljava/util/List;
    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->access$900(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->getFiles()Ljava/util/List;
    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->access$1900(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 552
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    sget-object v10, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z
    invoke-static {v8, v9, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$2000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z

    goto/16 :goto_0

    .line 554
    :cond_11
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManager;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    sget-object v10, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z
    invoke-static {v8, v9, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->access$2000(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z

    goto/16 :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
