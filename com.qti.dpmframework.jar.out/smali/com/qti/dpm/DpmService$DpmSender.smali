.class public Lcom/qti/dpm/DpmService$DpmSender;
.super Landroid/os/Handler;
.source "DpmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DpmSender"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "REQ:SNDR"


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    .line 611
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 615
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    .line 610
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 624
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/qti/dpm/DpmRequest;

    .line 625
    .local v5, "rr":Lcom/qti/dpm/DpmRequest;
    const/4 v4, 0x0

    .line 627
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 623
    .end local v4    # "req":Lcom/qti/dpm/DpmRequest;
    :cond_0
    :goto_0
    return-void

    .line 635
    .restart local v4    # "req":Lcom/qti/dpm/DpmRequest;
    :pswitch_0
    const/4 v0, 0x0

    .line 638
    .local v0, "alreadySubtracted":Z
    :try_start_0
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v6, v7, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 639
    .local v6, "s":Landroid/net/LocalSocket;
    if-nez v6, :cond_1

    .line 640
    invoke-virtual {v5}, Lcom/qti/dpm/DpmRequest;->release()V

    .line 641
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 642
    const/4 v0, 0x1

    .line 643
    return-void

    .line 645
    :cond_1
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v8, v7, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 646
    :try_start_1
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget-object v7, v7, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 648
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 649
    const/4 v0, 0x1

    .line 651
    iget-object v7, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 652
    .local v1, "data":[B
    iget-object v7, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 653
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    .line 654
    array-length v7, v1

    const/16 v8, 0x2000

    if-le v7, v8, :cond_4

    .line 655
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Parcel larger than max bytes allowed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 656
    array-length v9, v1

    .line 655
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 668
    .end local v1    # "data":[B
    .end local v6    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 669
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v7, "REQ:SNDR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v5, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->-wrap1(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    move-result-object v4

    .line 673
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 687
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "req":Lcom/qti/dpm/DpmRequest;
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 688
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    goto/16 :goto_0

    .line 645
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 676
    .end local v6    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v3

    .line 677
    .local v3, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "REQ:SNDR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Uncaught exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v5, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->-wrap1(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;

    move-result-object v4

    .line 681
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    if-nez v4, :cond_3

    if-nez v0, :cond_2

    .line 683
    :cond_3
    invoke-virtual {v5}, Lcom/qti/dpm/DpmRequest;->release()V

    goto :goto_1

    .line 660
    .end local v3    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "data":[B
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    iget-object v8, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    .line 661
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    array-length v8, v1

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x2

    aput-byte v8, v7, v9

    .line 662
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    array-length v8, v1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    .line 664
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/qti/dpm/DpmService$DpmSender;->dataLength:[B

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 665
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V

    .line 667
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    iget v8, v5, Lcom/qti/dpm/DpmRequest;->mSerial:I

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->-wrap1(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 674
    .end local v1    # "data":[B
    .end local v6    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "ex":Ljava/io/IOException;
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    :cond_5
    invoke-virtual {v5}, Lcom/qti/dpm/DpmRequest;->release()V

    goto :goto_1

    .line 692
    .end local v0    # "alreadySubtracted":Z
    .end local v2    # "ex":Ljava/io/IOException;
    .local v4, "req":Lcom/qti/dpm/DpmRequest;
    :pswitch_1
    const-string/jumbo v7, "REQ:SNDR"

    const-string/jumbo v8, "event_toggle_wifi ...reassociating"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v7}, Lcom/qti/dpm/DpmService;->-get2(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 694
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v7}, Lcom/qti/dpm/DpmService;->-get2(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto/16 :goto_0

    .line 697
    :pswitch_2
    iget-object v7, p0, Lcom/qti/dpm/DpmService$DpmSender;->this$0:Lcom/qti/dpm/DpmService;

    invoke-static {v7}, Lcom/qti/dpm/DpmService;->-wrap10(Lcom/qti/dpm/DpmService;)V

    goto/16 :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method
