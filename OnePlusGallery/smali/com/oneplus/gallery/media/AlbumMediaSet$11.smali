.class Lcom/oneplus/gallery/media/AlbumMediaSet$11;
.super Ljava/lang/Object;
.source "AlbumMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/AlbumMediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

.field final synthetic val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

.field final synthetic val$maxMediaCount:I

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/AlbumMediaSet;Lcom/oneplus/gallery/media/MediaComparator;ILcom/oneplus/gallery/media/MediaList;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iput p3, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$maxMediaCount:I

    iput-object p4, p0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 20
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 486
    .local v14, "mediaIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_AlbumId:J
    invoke-static {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$400(Lcom/oneplus/gallery/media/AlbumMediaSet;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getRelatedMediaIds(J)[J

    move-result-object v17

    .line 487
    .local v17, "relatedIds":[J
    move-object/from16 v0, v17

    array-length v2, v0

    if-nez v2, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$600(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openMediaList() - No media in album"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v9, v2, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_2

    .line 493
    aget-wide v2, v17, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 496
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/MediaComparator;->getContentProviderSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getBaseMediaQueryCondition()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 498
    .local v8, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x18

    .line 499
    .local v16, "mediaReportThreshold":I
    const/16 v18, 0x0

    .line 500
    .local v18, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$maxMediaCount:I

    if-ltz v2, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v12, "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_2
    if-eqz v8, :cond_0

    .line 505
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$700(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openMediaList() - Start"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v18

    .line 506
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .local v19, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_3
    :goto_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 508
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 509
    .local v10, "id":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v2, v10, v11}, Lcom/oneplus/gallery/media/AlbumMediaSet;->isMediaRecycled(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$300(Lcom/oneplus/gallery/media/AlbumMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v13

    .line 512
    .local v13, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v13, :cond_3

    .line 514
    if-eqz v12, :cond_a

    .line 516
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$maxMediaCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v12, v13, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v15

    .line 519
    .local v15, "mediaIndex":I
    if-gez v15, :cond_6

    .line 521
    xor-int/lit8 v15, v15, -0x1

    .line 522
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$maxMediaCount:I

    if-ge v15, v2, :cond_6

    .line 524
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$maxMediaCount:I

    if-lt v2, v3, :cond_5

    .line 525
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v12, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 573
    .end local v10    # "id":J
    .end local v13    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v15    # "mediaIndex":I
    :catchall_0
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 500
    .end local v12    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 526
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v10    # "id":J
    .restart local v12    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v15    # "mediaIndex":I
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_5
    :try_start_2
    invoke-interface {v12, v15, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    move-object/from16 v18, v19

    .end local v15    # "mediaIndex":I
    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_7
    :goto_6
    move-object/from16 v19, v18

    .line 564
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_3

    .line 532
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_10

    .line 535
    const/4 v2, 0x0

    invoke-interface {v12, v2, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_6

    .line 538
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_9
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_6

    .line 541
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v2, v3, v13}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/media/Media;)V

    .line 544
    shl-int/lit8 v16, v16, 0x1

    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_6

    .line 548
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_b
    if-nez v19, :cond_f

    .line 549
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_7
    :try_start_3
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-lt v2, v0, :cond_7

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery/media/MediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 555
    const/16 v18, 0x0

    .line 565
    .end local v10    # "id":J
    .end local v13    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    # getter for: Lcom/oneplus/gallery/media/AlbumMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/AlbumMediaSet;->access$800(Lcom/oneplus/gallery/media/AlbumMediaSet;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openMediaList() - End"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    if-eqz v12, :cond_e

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v12, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 573
    :cond_c
    :goto_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 558
    .restart local v10    # "id":J
    .restart local v13    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V

    .line 559
    const/16 v18, 0x0

    .line 560
    const/16 v2, 0x40

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    .line 561
    shl-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 568
    .end local v10    # "id":J
    .end local v13    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_e
    if-eqz v18, :cond_c

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->this$0:Lcom/oneplus/gallery/media/AlbumMediaSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/AlbumMediaSet$11;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lcom/oneplus/gallery/media/AlbumMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 573
    :catchall_1
    move-exception v2

    goto/16 :goto_5

    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v10    # "id":J
    .restart local v13    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_f
    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_7

    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_10
    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto/16 :goto_6

    .end local v10    # "id":J
    .end local v13    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_11
    move-object/from16 v18, v19

    .end local v19    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_8
.end method
