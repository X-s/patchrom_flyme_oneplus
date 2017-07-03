.class Lcom/oneplus/gallery/media/FavoriteMediaSet$6;
.super Ljava/lang/Object;
.source "FavoriteMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/FavoriteMediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;IILcom/oneplus/gallery/media/MediaList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

.field final synthetic val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

.field final synthetic val$maxMediaCount:I

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/FavoriteMediaSet;Lcom/oneplus/gallery/media/MediaComparator;ILcom/oneplus/gallery/media/MediaList;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iput p3, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$maxMediaCount:I

    iput-object p4, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

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
    .line 344
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaComparator;->getContentProviderSortOrder()Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->getBaseMediaQueryCondition()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    .local v6, "cursor":Landroid/database/Cursor;
    const/16 v12, 0x18

    .line 347
    .local v12, "mediaReportThreshold":I
    const/4 v13, 0x0

    .line 348
    .local v13, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    iget v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$maxMediaCount:I

    if-ltz v0, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v7, "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_0
    if-eqz v6, :cond_a

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$100(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openMediaList() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v13

    .line 354
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .local v14, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 356
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 357
    .local v8, "id":J
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/oneplus/gallery/media/OPMediaManager;->isFavorite(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$000(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v10

    .line 364
    .local v10, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v10, :cond_0

    .line 367
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    invoke-virtual {v0, v10}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->isMediaRecycled(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    if-eqz v7, :cond_7

    .line 372
    iget v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$maxMediaCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 374
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-static {v7, v10, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v11

    .line 375
    .local v11, "mediaIndex":I
    if-gez v11, :cond_3

    .line 377
    xor-int/lit8 v11, v11, -0x1

    .line 378
    iget v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$maxMediaCount:I

    if-ge v11, v0, :cond_3

    .line 380
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$maxMediaCount:I

    if-lt v0, v1, :cond_2

    .line 381
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 429
    .end local v8    # "id":J
    .end local v10    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v11    # "mediaIndex":I
    :catchall_0
    move-exception v0

    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 348
    .end local v7    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 382
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v7    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v8    # "id":J
    .restart local v10    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v11    # "mediaIndex":I
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_2
    :try_start_2
    invoke-interface {v7, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    move-object v13, v14

    .end local v11    # "mediaIndex":I
    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_4
    :goto_4
    move-object v14, v13

    .line 420
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_1

    .line 388
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 390
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_e

    .line 391
    const/4 v0, 0x0

    invoke-interface {v7, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_4

    .line 394
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_6
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_4

    .line 397
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_7
    const/4 v0, 0x1

    if-ne v12, v0, :cond_8

    .line 399
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/media/Media;)V

    .line 400
    shl-int/lit8 v12, v12, 0x1

    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_4

    .line 404
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_8
    if-nez v14, :cond_d

    .line 405
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_5
    :try_start_3
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v12, :cond_4

    .line 409
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 411
    const/4 v13, 0x0

    .line 421
    .end local v8    # "id":J
    .end local v10    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_6
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    # getter for: Lcom/oneplus/gallery/media/FavoriteMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->access$200(Lcom/oneplus/gallery/media/FavoriteMediaSet;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openMediaList() - End"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    if-eqz v7, :cond_c

    .line 423
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v7, v2}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 429
    :cond_9
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_a
    return-void

    .line 414
    .restart local v8    # "id":J
    .restart local v10    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_b
    :try_start_4
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V

    .line 415
    const/4 v13, 0x0

    .line 416
    const/16 v0, 0x40

    if-ge v12, v0, :cond_4

    .line 417
    shl-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 424
    .end local v8    # "id":J
    .end local v10    # "media":Lcom/oneplus/gallery/media/Media;
    :cond_c
    if-eqz v13, :cond_9

    .line 425
    iget-object v0, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->this$0:Lcom/oneplus/gallery/media/FavoriteMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/FavoriteMediaSet$6;->val$mediaList:Lcom/oneplus/gallery/media/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Lcom/oneplus/gallery/media/FavoriteMediaSet;->addMediaToMediaList(Lcom/oneplus/gallery/media/MediaList;Ljava/util/List;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .line 429
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v8    # "id":J
    .restart local v10    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_d
    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_5

    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_e
    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto/16 :goto_4

    .end local v8    # "id":J
    .end local v10    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_f
    move-object v13, v14

    .end local v14    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v13    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_6
.end method
