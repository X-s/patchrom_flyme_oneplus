.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;
.super Ljava/lang/Object;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->onUpdateCoverHashCode()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

.field final synthetic val$coverHashCodeRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->val$coverHashCodeRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 12
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xc

    .line 1045
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v10, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMinimumMediaColumns()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$500(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$600(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1047
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1051
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1054
    .local v8, "id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    new-instance v9, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    invoke-direct {v9, v7}, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 1057
    .local v9, "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v9, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    .line 1058
    .local v6, "coverIndex":I
    if-gez v6, :cond_0

    .line 1060
    xor-int/lit8 v6, v6, -0x1

    .line 1061
    if-ge v6, v11, :cond_0

    .line 1063
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_1

    .line 1064
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1072
    .end local v6    # "coverIndex":I
    .end local v8    # "id":Ljava/lang/Long;
    .end local v9    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1065
    .restart local v6    # "coverIndex":I
    .restart local v8    # "id":Ljava/lang/Long;
    .restart local v9    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_1
    :try_start_1
    invoke-interface {v10, v6, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1072
    .end local v6    # "coverIndex":I
    .end local v8    # "id":Ljava/lang/Long;
    .end local v9    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->val$coverHashCodeRef:Lcom/oneplus/base/Ref;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$6;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->createCoverHashCode(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1076
    return-void
.end method
