.class Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OnePlusAppStartupManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppStartupManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field private focusPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusAppStartupManagerUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppStartupManagerUtils;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    .line 253
    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 254
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    .line 255
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 261
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;->focusPath:Ljava/lang/String;

    const-string v1, "/data/system/startup_manager.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    # getter for: Lcom/android/server/am/OnePlusAppStartupManagerUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEvent CLOSE_WRITE!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppStartupManagerUtils$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusAppStartupManagerUtils;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppStartupManagerUtils;->readStartupManagerFile()V

    .line 265
    invoke-static {}, Lcom/android/server/am/OnePlusAppStartupManager;->getInstance()Lcom/android/server/am/OnePlusAppStartupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppStartupManager;->updateBlacklist()V

    .line 268
    :cond_0
    return-void
.end method
