.class Lcom/android/server/am/ActivityManagerService$11$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$11;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$11;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$11;
    .param p2, "val$d"    # Landroid/app/Dialog;

    .prologue
    .line 6639
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11$1;->this$1:Lcom/android/server/am/ActivityManagerService$11;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$11$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6642
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11$1;->this$1:Lcom/android/server/am/ActivityManagerService$11;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6643
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6644
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11$1;->this$1:Lcom/android/server/am/ActivityManagerService$11;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchWarningShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6642
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 6641
    return-void

    .line 6642
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
