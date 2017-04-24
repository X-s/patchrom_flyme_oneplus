.class Lcom/android/server/am/ActivityManagerService$34;
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

    .prologue
    .line 23186
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, -0x1

    .line 23188
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 23190
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->items:Lcom/qualcomm/qcnvitems/QcNvItems;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Lcom/qualcomm/qcnvitems/QcNvItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qcnvitems/QcNvItems;->getPcbNumber()Ljava/lang/String;

    move-result-object v2

    .line 23191
    .local v2, "pcb":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 23192
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v5, v3, :cond_0

    .line 23193
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 23195
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showPCBNo(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->access$3500(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23204
    .end local v2    # "pcb":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 23206
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->items:Lcom/qualcomm/qcnvitems/QcNvItems;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$3400(Lcom/android/server/am/ActivityManagerService;)Lcom/qualcomm/qcnvitems/QcNvItems;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/qcnvitems/QcNvItems;->getEncryptImei(B)Ljava/lang/String;

    move-result-object v1

    .line 23207
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 23208
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v5, v3, :cond_2

    .line 23209
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 23211
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$34;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showPCBNo(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/server/am/ActivityManagerService;->access$3500(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23219
    .end local v1    # "imei":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 23198
    :catch_0
    move-exception v0

    .line 23199
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ActivityManager"

    const-string v4, "getpcb fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 23214
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 23215
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "ActivityManager"

    const-string v4, "getimei fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
