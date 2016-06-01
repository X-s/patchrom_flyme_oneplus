.class Lcom/oppo/account/ReqSigninAgent$1;
.super Ljava/lang/Object;
.source "ReqSigninAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/account/ReqSigninAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/account/ReqSigninAgent;


# direct methods
.method constructor <init>(Lcom/oppo/account/ReqSigninAgent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oppo/account/ReqSigninAgent$1;->this$0:Lcom/oppo/account/ReqSigninAgent;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$1;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_0
    invoke-static {p2}, Lcom/nearme/aidl/IAskSignin$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/IAskSignin;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$0(Lcom/nearme/aidl/IAskSignin;)V

    .line 249
    iget-object v0, p0, Lcom/oppo/account/ReqSigninAgent$1;->this$0:Lcom/oppo/account/ReqSigninAgent;

    # getter for: Lcom/oppo/account/ReqSigninAgent;->isLocked:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$1(Lcom/oppo/account/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 247
    monitor-exit v1

    .line 251
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oppo/account/ReqSigninAgent;->access$0(Lcom/nearme/aidl/IAskSignin;)V

    .line 243
    return-void
.end method
