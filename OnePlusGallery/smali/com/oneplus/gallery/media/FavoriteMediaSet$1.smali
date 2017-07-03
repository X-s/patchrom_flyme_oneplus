.class Lcom/oneplus/gallery/media/FavoriteMediaSet$1;
.super Ljava/lang/Object;
.source "FavoriteMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/FavoriteMediaSet;->delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

.field final synthetic val$mediaIdTable:[J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;[J)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iput-object p3, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->val$mediaIdTable:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 80
    iget-object v4, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionStarted()V

    .line 83
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->val$mediaIdTable:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 84
    .local v3, "mediaId":Ljava/lang/Long;
    iget-object v4, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v4}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-interface {v4, v6, v7, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->setFavorite(JZ)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "mediaId":Ljava/lang/Long;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$1;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionCompleted(Z)V

    .line 88
    return-void
.end method
