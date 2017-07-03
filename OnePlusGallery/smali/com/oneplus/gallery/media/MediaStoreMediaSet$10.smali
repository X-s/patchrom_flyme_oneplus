.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;
.super Ljava/lang/Object;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->updateMediaIdTable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

.field final synthetic val$currentPhotoGroupIdTable:Ljava/util/HashSet;

.field final synthetic val$currentPhotoIdTable:Ljava/util/HashSet;

.field final synthetic val$currentVideoGroupIdTable:Ljava/util/HashSet;

.field final synthetic val$currentVideoIdTable:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoGroupIdTable:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoIdTable:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoGroupIdTable:Ljava/util/HashSet;

    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoIdTable:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 25
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1514
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMinimumMediaColumns()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$500(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$600(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1515
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 1517
    const/16 v18, 0x0

    .line 1518
    .local v18, "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/16 v22, 0x0

    .line 1519
    .local v22, "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    .line 1520
    .local v16, "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 1521
    .local v20, "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "coverMediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    move-object/from16 v21, v20

    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v21, "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v17, v16

    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v17, "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v23, v22

    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v23, "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v19, v18

    .line 1524
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .local v19, "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1526
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1527
    .local v14, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1529
    new-instance v15, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;

    invoke-direct {v15, v11}, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;-><init>(Landroid/database/Cursor;)V

    .line 1530
    .local v15, "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    invoke-interface {v2, v15}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainGroupMedia(Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;)Lcom/oneplus/gallery/media/GroupMedia;

    move-result-object v13

    .line 1531
    .local v13, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    sget-object v2, Lcom/oneplus/gallery/media/MediaStoreMediaSet$11;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v3, v15, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch v2, :pswitch_data_0

    :cond_1
    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v18, v19

    .line 1571
    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_1
    :try_start_1
    sget-object v2, Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;->DEFAULT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v15, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v9

    .line 1572
    .local v9, "coverIndex":I
    if-gez v9, :cond_5

    .line 1574
    xor-int/lit8 v9, v9, -0x1

    .line 1575
    const/16 v2, 0xc

    if-ge v9, v2, :cond_5

    .line 1577
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_4

    .line 1578
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1586
    .end local v9    # "coverIndex":I
    :catchall_0
    move-exception v2

    .end local v13    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v14    # "id":Ljava/lang/Long;
    .end local v15    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1534
    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .restart local v14    # "id":Ljava/lang/Long;
    .restart local v15    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :pswitch_0
    if-eqz v13, :cond_2

    .line 1536
    :try_start_2
    invoke-interface {v13}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v12

    .line 1537
    .local v12, "groupId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoGroupIdTable:Ljava/util/HashSet;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1539
    if-nez v17, :cond_e

    .line 1540
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1541
    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_4
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v18, v19

    .line 1543
    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto :goto_1

    .line 1544
    .end local v12    # "groupId":Ljava/lang/String;
    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoIdTable:Ljava/util/HashSet;

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1546
    if-nez v19, :cond_d

    .line 1547
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1548
    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_6
    :try_start_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto :goto_1

    .line 1552
    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :pswitch_1
    if-eqz v13, :cond_3

    .line 1554
    :try_start_6
    invoke-interface {v13}, Lcom/oneplus/gallery/media/GroupMedia;->getGroupId()Ljava/lang/String;

    move-result-object v12

    .line 1555
    .restart local v12    # "groupId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoGroupIdTable:Ljava/util/HashSet;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1557
    if-nez v21, :cond_b

    .line 1558
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1559
    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_7
    :try_start_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_8
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v18, v19

    .line 1561
    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_1

    .line 1562
    .end local v12    # "groupId":Ljava/lang/String;
    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoIdTable:Ljava/util/HashSet;

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1564
    if-nez v23, :cond_a

    .line 1565
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1566
    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_9
    :try_start_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v18, v19

    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_1

    .line 1579
    .restart local v9    # "coverIndex":I
    :cond_4
    :try_start_a
    invoke-interface {v10, v9, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    move-object/from16 v21, v20

    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v17, v16

    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v23, v22

    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v19, v18

    .line 1582
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_0

    .line 1586
    .end local v9    # "coverIndex":I
    .end local v13    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v14    # "id":Ljava/lang/Long;
    .end local v15    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsFirstMediaIdTableUpdate:Z
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$1200(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoIdTable:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoIdTable:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoGroupIdTable:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoGroupIdTable:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1598
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$1100(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/base/PeriodicMessageDispatcher;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, -0x2713

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x8

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoIdTable:Ljava/util/HashSet;

    move-object/from16 v24, v0

    aput-object v24, v7, v8

    const/4 v8, 0x2

    aput-object v23, v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoIdTable:Ljava/util/HashSet;

    move-object/from16 v24, v0

    aput-object v24, v7, v8

    const/4 v8, 0x4

    aput-object v17, v7, v8

    const/4 v8, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentPhotoGroupIdTable:Ljava/util/HashSet;

    move-object/from16 v24, v0

    aput-object v24, v7, v8

    const/4 v8, 0x6

    aput-object v21, v7, v8

    const/4 v8, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->val$currentVideoGroupIdTable:Ljava/util/HashSet;

    move-object/from16 v24, v0

    aput-object v24, v7, v8

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/oneplus/base/PeriodicMessageDispatcher;->scheduleMessage(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 1609
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->createCoverHashCode(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 1610
    .local v7, "coverHashCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_PeriodicMessageDispatcher:Lcom/oneplus/base/PeriodicMessageDispatcher;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$1100(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/base/PeriodicMessageDispatcher;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, -0x272e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/oneplus/base/PeriodicMessageDispatcher;->scheduleMessage(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$10;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/4 v3, 0x0

    # setter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_IsFirstMediaIdTableUpdate:Z
    invoke-static {v2, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$1202(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Z)Z

    .line 1613
    .end local v7    # "coverHashCode":Ljava/lang/String;
    .end local v10    # "coverMediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_9
    return-void

    .line 1586
    .restart local v10    # "coverMediaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v18, v19

    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_3

    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12    # "groupId":Ljava/lang/String;
    .restart local v13    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .restart local v14    # "id":Ljava/lang/Long;
    .restart local v15    # "mediaInfo":Lcom/oneplus/gallery/media/MediaStoreMedia$MinimumMediaInfo;
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v18, v19

    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_3

    .end local v12    # "groupId":Ljava/lang/String;
    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_3
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_3

    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12    # "groupId":Ljava/lang/String;
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v18, v19

    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_3

    .end local v12    # "groupId":Ljava/lang/String;
    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5
    move-exception v2

    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v18, v19

    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_3

    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_a
    move-object/from16 v22, v23

    .end local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_9

    .end local v22    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12    # "groupId":Ljava/lang/String;
    .restart local v23    # "newVideoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_7

    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v20, v21

    .end local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_8

    .end local v12    # "groupId":Ljava/lang/String;
    .end local v20    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21    # "newVideoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v18, v19

    .end local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    goto/16 :goto_6

    .end local v18    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12    # "groupId":Ljava/lang/String;
    .restart local v19    # "newPhotoIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_e
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_4

    .end local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v16, v17

    .end local v17    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "newPhotoGroupIdTable":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_5

    .line 1531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
