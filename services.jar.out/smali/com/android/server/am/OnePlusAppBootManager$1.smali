.class Lcom/android/server/am/OnePlusAppBootManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 1809
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x3e8

    const/16 v8, 0x1f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1811
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v4, :cond_0

    .line 1812
    return-void

    .line 1815
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1816
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1818
    :cond_1
    const-string/jumbo v4, "com.haha.action.test"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1819
    const-string/jumbo v4, "code"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1820
    .local v1, "code":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1821
    const-string/jumbo v4, "persist"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1822
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4, v10, v11}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap9(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 1810
    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1823
    .restart local v1    # "code":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "prop_using_on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1824
    sput-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 1825
    const-string/jumbo v4, "persist.sys.appboot.using"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1826
    :cond_4
    const-string/jumbo v4, "prop_using_off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1827
    sput-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 1828
    const-string/jumbo v4, "persist.sys.appboot.using"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1829
    :cond_5
    const-string/jumbo v4, "prop_debug_on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1830
    sput-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 1831
    const-string/jumbo v4, "persist.sys.appboot.debug"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_6
    const-string/jumbo v4, "prop_debug_off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1833
    sput-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 1834
    const-string/jumbo v4, "persist.sys.appboot.debug"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1835
    :cond_7
    const-string/jumbo v4, "prop_blacklist_on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1836
    sput-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 1837
    const-string/jumbo v4, "persist.sys.appboot.blacklist"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1838
    :cond_8
    const-string/jumbo v4, "prop_blacklist_off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1839
    sput-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 1840
    const-string/jumbo v4, "persist.sys.appboot.blacklist"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1841
    :cond_9
    const-string/jumbo v4, "dump"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1842
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap5(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 1843
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap6(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_0

    .line 1844
    :cond_a
    const-string/jumbo v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1845
    const-string/jumbo v4, "@huge@dump"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1846
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap4(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto/16 :goto_0

    .line 1847
    :cond_b
    const-string/jumbo v4, "@huge@add@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1848
    const-string/jumbo v4, "@huge@add@"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1849
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const/4 v5, 0x2

    invoke-static {v4, v3, v6, v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap10(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 1855
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1856
    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->-set0(Z)Z

    .line 1858
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v4, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1859
    .local v2, "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 1860
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v4, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1862
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4, v10, v11}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap9(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto/16 :goto_0

    .line 1863
    .end local v2    # "msg":Landroid/os/Message;
    :cond_d
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1864
    invoke-static {v6}, Lcom/android/server/am/OnePlusAppBootManager;->-set0(Z)Z

    .line 1866
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-static {v4, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1867
    .restart local v2    # "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 1868
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v4, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1869
    .end local v2    # "msg":Landroid/os/Message;
    :cond_e
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1870
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$1;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap1(Lcom/android/server/am/OnePlusAppBootManager;)Z

    goto/16 :goto_0
.end method
