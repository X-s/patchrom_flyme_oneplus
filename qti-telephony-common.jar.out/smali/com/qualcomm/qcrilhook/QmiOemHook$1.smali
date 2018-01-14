.class Lcom/qualcomm/qcrilhook/QmiOemHook$1;
.super Ljava/lang/Object;
.source "QmiOemHook.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QmiOemHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QmiOemHook;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook$1;->this$0:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQcRilHookDisconnected()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 71
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-set0(Z)Z

    .line 72
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-get1()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onQcRilHookReadyCb: service disconnected; notifying registrants."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-get2()Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 70
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onQcRilHookReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-set0(Z)Z

    .line 65
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-get1()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 66
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onQcRilHookReadyCb notifying registrants"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/qualcomm/qcrilhook/QmiOemHook;->-get2()Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 63
    return-void
.end method
