.class Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;
.super Landroid/os/Handler;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBootProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    .line 2078
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2077
    return-void
.end method

.method private handlePkgMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2111
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2112
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 2110
    :cond_1
    :goto_0
    return-void

    .line 2114
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap1(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2115
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # reinstall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2119
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap6(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 2120
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2124
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap1(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2125
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # install "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2112
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 2082
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage # msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2084
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2105
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->handlePkgMessage(Landroid/os/Message;)V

    .line 2081
    :cond_1
    :goto_0
    return-void

    .line 2086
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->-get2()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->writeXml_appboot(Ljava/util/HashMap;)I

    goto :goto_0

    .line 2090
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap2(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I

    move-result v1

    .line 2091
    .local v1, "ret":I
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceStopPkg # ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2096
    .end local v1    # "ret":I
    :sswitch_2
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->-get1(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2097
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap7(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 2101
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap10(Lcom/android/server/am/OnePlusAppBootManager;Z)V

    goto :goto_0

    .line 2084
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x1f -> :sswitch_3
    .end sparse-switch
.end method
