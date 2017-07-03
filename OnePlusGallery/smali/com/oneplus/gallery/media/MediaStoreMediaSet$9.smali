.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;
.super Ljava/lang/Object;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateCoverHashCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)V
    .locals 0

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onUpdateCoverHashCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1478
    .local v5, "hashCode":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$1100(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/base/PeriodicMessageDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, -0x272e

    const/4 v6, 0x1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/oneplus/base/PeriodicMessageDispatcher;->scheduleMessage(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 1479
    return-void

    .line 1473
    .end local v5    # "hashCode":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1475
    .local v7, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$9;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$1000(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateCoverHashCode() - Unhandled error"

    invoke-static {v0, v1, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1476
    const/4 v5, 0x0

    .restart local v5    # "hashCode":Ljava/lang/String;
    goto :goto_0
.end method
