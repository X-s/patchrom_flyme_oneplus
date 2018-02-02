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
    .param p1, "this$1"    # Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 455
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->-set0(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Z)Z

    .line 456
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->hasMessage()Z

    move-result v8

    if-nez v8, :cond_2

    .line 596
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/oneplus/base/component/ComponentState;->RELEASED:Lcom/oneplus/base/component/ComponentState;

    if-ne v8, v9, :cond_2

    .line 598
    :cond_1
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get6(Lcom/oneplus/camera/io/FileManagerImpl;)Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->quitSafely()Z

    .line 600
    :cond_2
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->-set0(Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;Z)Z

    .line 454
    return-void

    .line 459
    :pswitch_0
    const-string/jumbo v8, "FileManagerThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MESSAGE_SAVE_MEDIA  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get0(Lcom/oneplus/camera/io/FileManagerImpl;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    const/16 v9, 0x8

    if-lt v8, v9, :cond_3

    .line 462
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "Too many pending DB insertion, insert to DB first"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 467
    :cond_3
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/io/MediaSaveTask;

    .line 468
    .local v7, "task":Lcom/oneplus/camera/io/MediaSaveTask;
    if-nez v7, :cond_4

    .line 469
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "no file save task"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 471
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 476
    :cond_4
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->saveMediaToFile()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 477
    const-string/jumbo v8, "FileManagerThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MESSAGE_SAVE_MEDIA  success "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_FILE_SAVED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap3(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    .line 482
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    :goto_1
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 492
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    goto/16 :goto_0

    .line 485
    :cond_5
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getMediaSize()J

    move-result-wide v10

    neg-long v10, v10

    invoke-static {v8, v10, v11}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap7(Lcom/oneplus/camera/io/FileManagerImpl;J)V

    .line 486
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 487
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    :cond_6
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap3(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    goto :goto_1

    .line 496
    .end local v7    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    :pswitch_1
    const-string/jumbo v8, "FileManagerThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MESSAGE_INSERT_MEDIA  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-get0(Lcom/oneplus/camera/io/FileManagerImpl;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v10, v10, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get0(Lcom/oneplus/camera/io/FileManagerImpl;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 500
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    const/16 v9, 0x8

    if-ge v8, v9, :cond_7

    .line 501
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "Save file first"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 505
    :cond_7
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/io/MediaSaveTask;

    .line 506
    .restart local v7    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    if-nez v7, :cond_8

    .line 507
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "no file save task"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 509
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 513
    :cond_8
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->insertToMediaStore()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 514
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "filePath":Ljava/lang/String;
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8, v3}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap0(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8, v3}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap1(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 517
    :cond_9
    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getCreatedTime()J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/oneplus/camera/media/MediaListManager;->notifyFileAdded(Ljava/lang/String;J)V

    .line 519
    :cond_a
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get7(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_SAVED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap3(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    .line 525
    .end local v3    # "filePath":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v7}, Lcom/oneplus/camera/io/MediaSaveTask;->getMediaSize()J

    move-result-wide v10

    neg-long v10, v10

    invoke-static {v8, v10, v11}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap7(Lcom/oneplus/camera/io/FileManagerImpl;J)V

    .line 527
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get9(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 528
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    :cond_b
    :goto_3
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get2(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 534
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get1(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get1(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3ec

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 522
    :cond_c
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_SAVE_FAILED:Lcom/oneplus/base/EventKey;

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap3(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/io/MediaSaveTask;Z)Z

    goto :goto_2

    .line 529
    :cond_d
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get8(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 530
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-get4(Lcom/oneplus/camera/io/FileManagerImpl;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e9

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 539
    .end local v7    # "task":Lcom/oneplus/camera/io/MediaSaveTask;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 541
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 544
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8, v4}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap0(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 545
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 549
    .local v1, "deleteUri":Landroid/net/Uri;
    :goto_4
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "handleMessage() - Delete file: "

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 551
    invoke-static {v4}, Lcom/oneplus/camera/media/MediaListManager;->notifyFileDeleted(Ljava/lang/String;)V

    .line 552
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "_data= ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v1, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, "deleteCount":I
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "handleMessage() - Delete count: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    .end local v0    # "deleteCount":I
    :cond_e
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/oneplus/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".dng"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "rawFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v5, "rawFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 565
    const-string/jumbo v8, "FileManagerThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage() - Delete raw file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 568
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "external"

    invoke-static {v9}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string/jumbo v10, "_data= ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 569
    .restart local v0    # "deleteCount":I
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "handleMessage() - Delete raw file count: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 578
    .end local v0    # "deleteCount":I
    .end local v5    # "rawFile":Ljava/io/File;
    .end local v6    # "rawFilePath":Ljava/lang/String;
    :cond_f
    :goto_5
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_FILE_DELETED:Lcom/oneplus/base/EventKey;

    invoke-static {v8, v9, v4}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap4(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z

    .line 579
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-virtual {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    goto/16 :goto_0

    .line 547
    .end local v1    # "deleteUri":Landroid/net/Uri;
    :cond_10
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1    # "deleteUri":Landroid/net/Uri;
    goto/16 :goto_4

    .line 573
    .restart local v5    # "rawFile":Ljava/io/File;
    .restart local v6    # "rawFilePath":Ljava/lang/String;
    :cond_11
    const-string/jumbo v8, "FileManagerThread"

    const-string/jumbo v9, "handleMessage() - delete raw file failed"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 584
    .end local v1    # "deleteUri":Landroid/net/Uri;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "rawFile":Ljava/io/File;
    .end local v6    # "rawFilePath":Ljava/lang/String;
    :pswitch_3
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get5(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 585
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get7(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 586
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get3(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 587
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v8}, Lcom/oneplus/camera/io/FileManagerImpl;->-get5(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v9, v9, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    invoke-static {v9}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap5(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    sget-object v10, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-static {v8, v9, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap2(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z

    goto/16 :goto_0

    .line 590
    :cond_12
    iget-object v8, p0, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread$1;->this$1:Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;

    iget-object v8, v8, Lcom/oneplus/camera/io/FileManagerImpl$FileManageerThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    sget-object v9, Lcom/oneplus/camera/io/FileManagerImpl;->EVENT_MEDIA_FILES_RESET:Lcom/oneplus/base/EventKey;

    sget-object v10, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-static {v8, v9, v10}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap2(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)Z

    goto/16 :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
