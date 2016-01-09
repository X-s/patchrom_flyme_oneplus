.class Lcom/android/server/am/RemoteAutoStartServices$1;
.super Lcom/android/server/am/IAutoStartService$Stub;
.source "RemoteAutoStartServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RemoteAutoStartServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/RemoteAutoStartServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/RemoteAutoStartServices;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/server/am/RemoteAutoStartServices$1;->this$0:Lcom/android/server/am/RemoteAutoStartServices;

    invoke-direct {p0}, Lcom/android/server/am/IAutoStartService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnAutoStartList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/android/server/am/AutoStartImpl;

    iget-object v1, p0, Lcom/android/server/am/RemoteAutoStartServices$1;->this$0:Lcom/android/server/am/RemoteAutoStartServices;

    # getter for: Lcom/android/server/am/RemoteAutoStartServices;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/RemoteAutoStartServices;->access$000(Lcom/android/server/am/RemoteAutoStartServices;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/AutoStartImpl;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "mAutoStartImpl":Lcom/android/server/am/AutoStartImpl;
    invoke-virtual {v0}, Lcom/android/server/am/AutoStartImpl;->readFromFile()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
