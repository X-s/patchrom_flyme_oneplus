.class Lcom/oneplus/gallery/media/SelfieMediaSet$6;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet;->onUpdateCoverHashCode()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

.field final synthetic val$coverHashCodeRef:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$6;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$6;->val$coverHashCodeRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 14
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v12, "mediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMinimumMediaColumns()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$6;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getBaseMediaQueryCondition()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$6;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v13

    .line 290
    .local v13, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 293
    .local v8, "id":J
    invoke-interface {v13, v8, v9}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-static {v8, v9}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v7

    .line 296
    .local v7, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v7, :cond_0

    iget v0, v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 298
    new-instance v11, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    invoke-direct {v11, v6}, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 299
    .local v11, "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    sget-object v0, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v11, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v10

    .line 300
    .local v10, "mediaIndex":I
    if-gez v10, :cond_0

    .line 302
    xor-int/lit8 v10, v10, -0x1

    .line 303
    const/16 v0, 0xc

    if-ge v10, v0, :cond_0

    .line 305
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 306
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 314
    .end local v7    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v8    # "id":J
    .end local v10    # "mediaIndex":I
    .end local v11    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    .end local v13    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 307
    .restart local v7    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .restart local v8    # "id":J
    .restart local v10    # "mediaIndex":I
    .restart local v11    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    .restart local v13    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    :cond_1
    :try_start_1
    invoke-interface {v12, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v7    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v8    # "id":J
    .end local v10    # "mediaIndex":I
    .end local v11    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    .end local v13    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$6;->val$coverHashCodeRef:Lcom/oneplus/base/Ref;

    iget-object v1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$6;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->createCoverHashCode(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 318
    return-void
.end method
