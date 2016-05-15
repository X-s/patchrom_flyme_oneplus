.class public abstract Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;
.super Ljava/lang/Object;
.source "OemSyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OemSyncQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SyncRequest"
.end annotation


# instance fields
.field private final mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/OemSyncQueue;)V
    .locals 0
    .param p1, "queue"    # Lcom/android/internal/telephony/OemSyncQueue;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    .line 19
    return-void
.end method


# virtual methods
.method protected final end()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/OemSyncQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/OemSyncQueue;->remove(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OemSyncQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OemSyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->start()V

    goto :goto_0
.end method

.method public loop()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/OemSyncQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;->mSyncQueue:Lcom/android/internal/telephony/OemSyncQueue;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/OemSyncQueue;->add(Lcom/android/internal/telephony/OemSyncQueue$SyncRequest;)Z

    .line 37
    :cond_0
    return-void
.end method

.method protected abstract start()V
.end method
