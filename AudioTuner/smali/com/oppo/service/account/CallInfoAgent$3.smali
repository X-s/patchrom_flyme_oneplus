.class Lcom/oppo/service/account/CallInfoAgent$3;
.super Ljava/lang/Object;
.source "CallInfoAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/service/account/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/service/account/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/oppo/service/account/CallInfoAgent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oppo/service/account/CallInfoAgent$3;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent$3;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/service/account/CallInfoAgent;->access$1(Lcom/oppo/service/account/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 578
    :try_start_0
    invoke-static {p2}, Lcom/nearme/aidl/IAskTokenByAppCode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/IAskTokenByAppCode;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/service/account/CallInfoAgent;->access$3(Lcom/nearme/aidl/IAskTokenByAppCode;)V

    .line 581
    iget-object v0, p0, Lcom/oppo/service/account/CallInfoAgent$3;->this$0:Lcom/oppo/service/account/CallInfoAgent;

    # getter for: Lcom/oppo/service/account/CallInfoAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/service/account/CallInfoAgent;->access$1(Lcom/oppo/service/account/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 577
    monitor-exit v1

    .line 583
    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 573
    return-void
.end method
