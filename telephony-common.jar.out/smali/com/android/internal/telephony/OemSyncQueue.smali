.class public Lcom/android/internal/telephony/OemSyncQueue;
.super Ljava/util/ArrayList;
.source "OemSyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public add(ILcom/android/internal/telephony/OemSyncQueue$SyncRequest;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemSyncQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p2}, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->start()V

    .line 55
    :cond_0
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p2, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/OemSyncQueue;->add(ILcom/android/internal/telephony/OemSyncQueue$SyncRequest;)V

    return-void
.end method

.method public add(Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;)Z
    .locals 3
    .param p1, "object"    # Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    .prologue
    .line 42
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemSyncQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->start()V

    .line 46
    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OemSyncQueue;->add(Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 69
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemSyncQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/OemSyncQueue;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/OemSyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    invoke-virtual {v1}, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->start()V

    .line 72
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 60
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemSyncQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/OemSyncQueue;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/OemSyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    invoke-virtual {v1}, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->start()V

    .line 63
    :cond_0
    return v0
.end method
