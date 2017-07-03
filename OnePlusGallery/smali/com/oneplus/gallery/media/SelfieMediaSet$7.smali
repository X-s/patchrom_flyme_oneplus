.class Lcom/oneplus/gallery/media/SelfieMediaSet$7;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

.field final synthetic val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

.field final synthetic val$maxMediaCount:I

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;ILcom/oneplus/gallery/media/MediaComparator;Lcom/oneplus/gallery/media/MediaList;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iput p2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$maxMediaCount:I

    iput-object p3, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iput-object p4, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 19
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v8, 0x0

    .line 336
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v17, 0x4

    .line 337
    .local v17, "mediaUpdateCount":I
    const/4 v12, -0x1

    .line 338
    .local v12, "idColumnIndex":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v16

    .line 339
    .local v16, "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    const/16 v18, 0x0

    .line 340
    .local v18, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$maxMediaCount:I

    if-ltz v2, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v13, "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/MediaComparator;->getContentProviderSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/SelfieMediaSet;->getBaseMediaQueryCondition()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 343
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 346
    if-gez v12, :cond_1

    .line 347
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 348
    :cond_1
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 351
    .local v10, "id":J
    invoke-static {v10, v11}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v9

    .line 352
    .local v9, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v9, :cond_0

    iget v2, v9, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 356
    move-object/from16 v0, v16

    invoke-interface {v0, v10, v11}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    move-object/from16 v0, v16

    invoke-interface {v0, v8, v12}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v14

    .line 361
    .local v14, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v14, :cond_0

    .line 365
    if-eqz v13, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$maxMediaCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v13, v14, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v15

    .line 370
    .local v15, "mediaIndex":I
    if-gez v15, :cond_0

    .line 372
    xor-int/lit8 v15, v15, -0x1

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$maxMediaCount:I

    if-ge v15, v2, :cond_0

    .line 375
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$maxMediaCount:I

    if-lt v2, v3, :cond_4

    .line 376
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v13, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 413
    .end local v7    # "sortOrder":Ljava/lang/String;
    .end local v9    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v10    # "id":J
    .end local v13    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .end local v14    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v15    # "mediaIndex":I
    .end local v16    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 414
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 340
    .restart local v16    # "mediaManager":Lcom/oneplus/gallery/media/OPMediaManager;
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 377
    .restart local v7    # "sortOrder":Ljava/lang/String;
    .restart local v9    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .restart local v10    # "id":J
    .restart local v13    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v15    # "mediaIndex":I
    :cond_4
    :try_start_1
    invoke-interface {v13, v15, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 383
    .end local v15    # "mediaIndex":I
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 386
    const/4 v2, 0x0

    invoke-interface {v13, v2, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 389
    :cond_6
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 394
    :cond_7
    if-nez v18, :cond_8

    .line 395
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v2, v0, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V

    .line 400
    const/16 v18, 0x0

    .line 401
    const/16 v2, 0x40

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 402
    shl-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 406
    .end local v9    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v10    # "id":J
    .end local v14    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_9
    if-eqz v13, :cond_c

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v13, v4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    :cond_a
    :goto_3
    if-eqz v8, :cond_b

    .line 414
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_b
    return-void

    .line 408
    :cond_c
    if-eqz v18, :cond_a

    .line 409
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/SelfieMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
