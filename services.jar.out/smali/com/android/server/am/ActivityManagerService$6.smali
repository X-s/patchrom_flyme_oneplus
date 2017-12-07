.class Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 24844
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, -0x1

    .line 24846
    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 24848
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Lcom/qualcomm/qcnvitems/QcNvItems;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/qcnvitems/QcNvItems;->getPcbNumber()Ljava/lang/String;

    move-result-object v9

    .line 24849
    .local v9, "pcb":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 24850
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v13, v11, :cond_0

    .line 24851
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 24853
    :cond_0
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11, v9}, Lcom/android/server/am/ActivityManagerService;->-wrap18(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24864
    .end local v9    # "pcb":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 24866
    :try_start_1
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Lcom/qualcomm/qcnvitems/QcNvItems;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/qualcomm/qcnvitems/QcNvItems;->getEncryptImei(B)Ljava/lang/String;

    move-result-object v5

    .line 24867
    .local v5, "imei":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 24868
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v13, v11, :cond_2

    .line 24869
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 24871
    :cond_2
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11, v5}, Lcom/android/server/am/ActivityManagerService;->-wrap18(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 24883
    .end local v5    # "imei":Ljava/lang/String;
    :cond_3
    :goto_1
    iget v11, p1, Landroid/os/Message;->what:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7

    .line 24885
    :try_start_2
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Lcom/qualcomm/qcnvitems/QcNvItems;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/qcnvitems/QcNvItems;->getPcbNumber()Ljava/lang/String;

    move-result-object v9

    .line 24886
    .restart local v9    # "pcb":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Lcom/qualcomm/qcnvitems/QcNvItems;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/qcnvitems/QcNvItems;->getProductLineTestFlag()[B

    move-result-object v2

    .line 24887
    .local v2, "buff":[B
    const-string/jumbo v0, ""

    .line 24888
    .local v0, "MMI":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v11, v2

    if-ge v4, v11, :cond_6

    .line 24889
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 24888
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 24855
    .end local v0    # "MMI":Ljava/lang/String;
    .end local v2    # "buff":[B
    .end local v4    # "i":I
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "pcb number is empty..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 24858
    .end local v9    # "pcb":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 24859
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "getpcb fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24860
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 24873
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "imei":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "imei number is empty..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 24876
    .end local v5    # "imei":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 24877
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "getimei fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24878
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 24891
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "MMI":Ljava/lang/String;
    .restart local v2    # "buff":[B
    .restart local v4    # "i":I
    .restart local v9    # "pcb":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string/jumbo v11, "oem.device.imeicache0"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24892
    .local v6, "imei1":Ljava/lang/String;
    const-string/jumbo v11, "oem.device.imeicache1"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 24893
    .local v7, "imei2":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v12, "/data/oemnvitems/4678_0"

    invoke-static {v11, v12}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 24894
    .local v10, "wifi":Ljava/lang/String;
    const-string/jumbo v11, "persist.service.bdroid.bdaddr"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24895
    .local v1, "bt":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "WIFI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\nBT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\nPCBA: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\nMMI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 24896
    const-string/jumbo v12, "\nCarrier: 00000000\nIMEI1: "

    .line 24895
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 24896
    const-string/jumbo v12, "\nIMEI2: "

    .line 24895
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 24896
    const-string/jumbo v12, "\n"

    .line 24895
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 24897
    .local v8, "indicate":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v11, v8}, Lcom/android/server/am/ActivityManagerService;->-wrap17(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 24845
    .end local v0    # "MMI":Ljava/lang/String;
    .end local v1    # "bt":Ljava/lang/String;
    .end local v2    # "buff":[B
    .end local v4    # "i":I
    .end local v6    # "imei1":Ljava/lang/String;
    .end local v7    # "imei2":Ljava/lang/String;
    .end local v8    # "indicate":Ljava/lang/String;
    .end local v9    # "pcb":Ljava/lang/String;
    .end local v10    # "wifi":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 24899
    :catch_2
    move-exception v3

    .line 24900
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "getIndicate fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24901
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
