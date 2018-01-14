.class Lcom/qti/dpm/DpmService$DpmReceiver;
.super Ljava/lang/Object;
.source "DpmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DpmReceiver"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "REQ:RCVR"


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    .line 771
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 776
    const/4 v10, 0x0

    .line 780
    .local v10, "retryCount":I
    :goto_0
    const/4 v12, 0x0

    .line 784
    .local v12, "s":Landroid/net/LocalSocket;
    :try_start_0
    const-string/jumbo v16, "REQ:RCVR"

    const-string/jumbo v17, "DPM creating socket"

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap13(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 786
    .local v13, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v7, Landroid/net/LocalSocketAddress;

    .end local v12    # "s":Landroid/net/LocalSocket;
    const-string/jumbo v16, "dpmd"

    .line 787
    sget-object v17, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 786
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 788
    .local v7, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 816
    const/4 v10, 0x0

    .line 817
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v13, v0, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 818
    const-string/jumbo v16, "REQ:RCVR"

    const-string/jumbo v17, "Connected to \'dpmd\' socket"

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap13(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/16 v16, 0x1

    sput-boolean v16, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qti/dpm/DpmService;->-wrap0(Lcom/qti/dpm/DpmService;)Z

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->-wrap1(Lcom/qti/dpm/DpmService$ApnTypeToInt;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x3e8

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v19}, Lcom/qti/dpm/DpmService$DpmSender;->sendEmptyMessageDelayed(IJ)Z

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/qti/dpm/DpmService;->-wrap12(Lcom/qti/dpm/DpmService;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 826
    const/4 v8, 0x0

    .line 828
    .local v8, "length":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 833
    .local v6, "is":Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/qti/dpm/DpmService;->-wrap4(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    move-result v8

    .line 835
    if-gez v8, :cond_3

    .line 852
    .end local v6    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string/jumbo v16, "REQ:RCVR"

    const-string/jumbo v17, "Disconnected from \'dpmd\' socket"

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap13(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/16 v16, 0x0

    sput-boolean v16, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 854
    const/16 v16, 0x1

    sput-boolean v16, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    .line 855
    const/16 v16, 0x0

    sput-boolean v16, Lcom/qti/dpm/DpmService;->isDispatched:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 858
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 862
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/qti/dpm/DpmService;->mSocket:Landroid/net/LocalSocket;

    .line 863
    invoke-static {}, Lcom/qti/dpm/DpmRequest;->resetSerial()V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 867
    const/4 v5, 0x0

    .local v5, "i":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "sz":I
    :goto_4
    if-ge v5, v14, :cond_4

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qti/dpm/DpmRequest;

    .line 870
    .local v11, "rr":Lcom/qti/dpm/DpmRequest;
    invoke-virtual {v11}, Lcom/qti/dpm/DpmRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 867
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 789
    .end local v5    # "i":I
    .end local v7    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "length":I
    .end local v11    # "rr":Lcom/qti/dpm/DpmRequest;
    .end local v13    # "s":Landroid/net/LocalSocket;
    .end local v14    # "sz":I
    .restart local v12    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 791
    .end local v12    # "s":Landroid/net/LocalSocket;
    .local v3, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v12, :cond_0

    .line 792
    :try_start_8
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 800
    :cond_0
    :goto_6
    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v10, v0, :cond_2

    .line 801
    :try_start_9
    const-string/jumbo v16, "REQ:RCVR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Couldn\'t find \'dpmd\' socket after "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 802
    const-string/jumbo v18, " times, continuing to retry silently"

    .line 801
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 809
    :cond_1
    :goto_7
    const-wide/16 v16, 0xfa0

    :try_start_a
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 813
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 794
    :catch_1
    move-exception v4

    .local v4, "ex2":Ljava/io/IOException;
    goto :goto_6

    .line 803
    .end local v4    # "ex2":Ljava/io/IOException;
    :cond_2
    if-lez v10, :cond_1

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v10, v0, :cond_1

    .line 804
    :try_start_b
    const-string/jumbo v16, "REQ:RCVR"

    const-string/jumbo v17, "Couldn\'t find \'dpmd\' socket; retrying after timeout"

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    .line 876
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v15

    .line 877
    .local v15, "tr":Ljava/lang/Throwable;
    :goto_9
    const-string/jumbo v16, "REQ:RCVR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Uncaught exception "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void

    .line 810
    .end local v15    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 811
    .local v2, "er":Ljava/lang/InterruptedException;
    :try_start_c
    const-string/jumbo v16, "REQ:RCVR"

    const-string/jumbo v17, "dpmd socket open retry timer was interrupted"

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .line 839
    .end local v2    # "er":Ljava/lang/InterruptedException;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "l":Landroid/net/LocalSocketAddress;
    .restart local v8    # "length":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 840
    .local v9, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->buffer:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 841
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lcom/qti/dpm/DpmService;->-wrap11(Lcom/qti/dpm/DpmService;Landroid/os/Parcel;)V

    .line 844
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    .line 846
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v3

    .line 847
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string/jumbo v16, "REQ:RCVR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "\'dpmd\' socket closed"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap13(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 876
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v7    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "length":I
    :catch_5
    move-exception v15

    .restart local v15    # "tr":Ljava/lang/Throwable;
    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .local v12, "s":Landroid/net/LocalSocket;
    goto :goto_9

    .line 848
    .end local v12    # "s":Landroid/net/LocalSocket;
    .end local v15    # "tr":Ljava/lang/Throwable;
    .restart local v7    # "l":Landroid/net/LocalSocketAddress;
    .restart local v8    # "length":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v15

    .line 849
    .restart local v15    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v16, "REQ:RCVR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Uncaught exception read length="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "Exception:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 850
    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    .line 849
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qti/dpm/DpmService;->-wrap9(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 873
    .end local v15    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "i":I
    .restart local v14    # "sz":I
    :cond_4
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$DpmReceiver;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    monitor-exit v17

    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 866
    .end local v12    # "s":Landroid/net/LocalSocket;
    .end local v14    # "sz":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 859
    .end local v5    # "i":I
    :catch_7
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    .line 789
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v7    # "l":Landroid/net/LocalSocketAddress;
    .end local v8    # "length":I
    :catch_8
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .restart local v12    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
