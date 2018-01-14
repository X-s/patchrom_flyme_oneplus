.class Lcom/android/server/OemExService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemExService;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/OemExService$PackageInstallObserver;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/server/OemExService$PackageInstallObserver;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->-get1(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 211
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/android/server/OemExService$PackageInstallObserver;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->-get1(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method
