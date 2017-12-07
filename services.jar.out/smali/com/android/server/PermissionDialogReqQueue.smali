.class public Lcom/android/server/PermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/server/PermissionDialog;

.field private mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/PermissionDialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 86
    .local v0, "res":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->set(I)V

    .line 87
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "res":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    .line 82
    return-void
.end method

.method public register(Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .locals 1
    .param p1, "res"    # Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDialog(Lcom/android/server/PermissionDialog;)V
    .locals 0
    .param p1, "mDialog"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 39
    return-void
.end method
