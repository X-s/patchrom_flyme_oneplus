.class Lcom/oneplus/gallery/media/AlbumMediaSet$10;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->onUpdateCoverHashCode()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$coverHashCodeRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->val$coverHashCodeRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 15
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 427
    .local v10, "mediaIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J
    invoke-static {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getRelatedMediaIds(J)[J

    move-result-object v14

    .line 428
    .local v14, "relatedIds":[J
    array-length v0, v14

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$500(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openMediaList() - No media in album"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 433
    :cond_0
    array-length v0, v14

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 434
    aget-wide v0, v14, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 437
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v13, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMinimumMediaColumns()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getBaseMediaQueryCondition()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v0, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaComparator;->getContentProviderSortOrder()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 443
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 446
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v0, v8, v9}, Lcom/oneplus/gallery/media/AlbumMediaSet;->isMediaRecycled(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    new-instance v12, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    invoke-direct {v12, v6}, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 449
    .local v12, "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v13, v12, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v11

    .line 450
    .local v11, "mediaIndex":I
    if-gez v11, :cond_2

    .line 452
    xor-int/lit8 v11, v11, -0x1

    .line 453
    const/16 v0, 0xc

    if-ge v11, v0, :cond_2

    .line 455
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    .line 456
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 464
    .end local v8    # "id":J
    .end local v11    # "mediaIndex":I
    .end local v12    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 457
    .restart local v8    # "id":J
    .restart local v11    # "mediaIndex":I
    .restart local v12    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_3
    :try_start_1
    invoke-interface {v13, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 464
    .end local v8    # "id":J
    .end local v11    # "mediaIndex":I
    .end local v12    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->val$coverHashCodeRef:Lcom/oneplus/base/Ref;

    iget-object v1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$10;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->createCoverHashCode(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
