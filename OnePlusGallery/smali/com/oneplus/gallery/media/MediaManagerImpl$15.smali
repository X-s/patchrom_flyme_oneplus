.class Lcom/oneplus/gallery/media/MediaManagerImpl$15;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->insertImageToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;Lcom/oneplus/base/Ref;I)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$createdMedia:Lcom/oneplus/base/Ref;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$prepareValues:Landroid/content/ContentValues;

.field final synthetic val$result:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/content/ContentValues;Ljava/lang/String;ILcom/oneplus/base/Ref;[Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$prepareValues:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$filePath:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$flags:I

    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$createdMedia:Lcom/oneplus/base/Ref;

    iput-object p6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$result:[Landroid/net/Uri;

    iput-object p7, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 23
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2670
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$prepareValues:Landroid/content/ContentValues;

    if-nez v4, :cond_8

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2671
    .local v22, "values":Landroid/content/ContentValues;
    :goto_0
    const-string v4, "_data"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$filePath:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    const/16 v20, 0x0

    .line 2675
    .local v20, "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    const-string v4, "width"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "height"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2677
    :cond_0
    new-instance v20, Lcom/oneplus/base/SimpleRef;

    .end local v20    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    invoke-direct/range {v20 .. v20}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 2678
    .restart local v20    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$filePath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lcom/oneplus/media/ImageUtils;->decodeSize(Ljava/lang/String;Lcom/oneplus/base/Ref;)Landroid/util/Size;

    move-result-object v21

    .line 2679
    .local v21, "size":Landroid/util/Size;
    if-eqz v21, :cond_2

    .line 2681
    const-string v4, "width"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2682
    const-string v4, "width"

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2683
    :cond_1
    const-string v4, "height"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2684
    const-string v4, "height"

    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2689
    .end local v21    # "size":Landroid/util/Size;
    :cond_2
    const-string v4, "orientation"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2691
    if-eqz v20, :cond_9

    .line 2692
    const-string v5, "orientation"

    invoke-interface/range {v20 .. v20}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2698
    :cond_3
    :goto_1
    const-string v4, "mime_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/oneplus/media/ImageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2701
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 2702
    const-string v4, "mime_type"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 2709
    .local v17, "insertedUri":Landroid/net/Uri;
    if-nez v17, :cond_5

    .line 2712
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$filePath:Ljava/lang/String;

    aput-object v5, v8, v4

    .line 2713
    .local v8, "selectionArgs":[Ljava/lang/String;
    const-string v4, "_data=?"

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4, v8}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 2715
    const/4 v15, 0x0

    .line 2718
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_1
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const-string v7, "_data=?"

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2719
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v17

    .line 2730
    :goto_2
    if-eqz v15, :cond_5

    .line 2731
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2739
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_3
    if-eqz v17, :cond_7

    .line 2741
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 2742
    .local v10, "id":J
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/oneplus/gallery/media/Media;

    move-object/from16 v18, v0

    .line 2743
    .local v18, "media":[Lcom/oneplus/gallery/media/Media;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    const/4 v7, 0x0

    new-instance v9, Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$15$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$15;[Lcom/oneplus/gallery/media/Media;)V

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/oneplus/gallery/media/MediaManagerImpl;->queryMediaInMediaStore(Ljava/lang/Long;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;

    .line 2752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3300(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2754
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v6, 0x0

    aget-object v6, v18, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$flags:I

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->addToGroupMedia(JLcom/oneplus/gallery/media/Media;I)V
    invoke-static {v4, v10, v11, v6, v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3400(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V

    .line 2755
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2757
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    sget-object v12, Lcom/oneplus/gallery/media/MediaType;->PHOTO:Lcom/oneplus/gallery/media/MediaType;

    const/4 v4, 0x0

    aget-object v13, v18, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$flags:I

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->addToMediaTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v9 .. v14}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 2759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$createdMedia:Lcom/oneplus/base/Ref;

    if-eqz v4, :cond_6

    .line 2760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$createdMedia:Lcom/oneplus/base/Ref;

    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-interface {v4, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 2761
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$result:[Landroid/net/Uri;

    const/4 v5, 0x0

    aput-object v17, v4, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2766
    .end local v10    # "id":J
    .end local v18    # "media":[Lcom/oneplus/gallery/media/Media;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$lock:Ljava/lang/Object;

    monitor-enter v5

    .line 2768
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2769
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2771
    return-void

    .line 2670
    .end local v17    # "insertedUri":Landroid/net/Uri;
    .end local v20    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_6
    new-instance v22, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$prepareValues:Landroid/content/ContentValues;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2766
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$lock:Ljava/lang/Object;

    monitor-enter v5

    .line 2768
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$lock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 2769
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    .line 2694
    .restart local v20    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_9
    :try_start_8
    const-string v4, "orientation"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->val$filePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/oneplus/media/ImageUtils;->decodeOrientation(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2722
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "insertedUri":Landroid/net/Uri;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "insertImageToMediaStore() - Fail to query media ID"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 2724
    :catch_0
    move-exception v16

    .line 2726
    .local v16, "ex":Ljava/lang/Throwable;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3100(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "insertImageToMediaStore() - Fail to query media ID"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2730
    if-eqz v15, :cond_5

    .line 2731
    :try_start_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 2730
    .end local v16    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    if-eqz v15, :cond_b

    .line 2731
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 2735
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$15;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "insertImageToMediaStore() - Fail to update media store"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 2755
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "id":J
    .restart local v18    # "media":[Lcom/oneplus/gallery/media/Media;
    :catchall_2
    move-exception v4

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2769
    .end local v10    # "id":J
    .end local v18    # "media":[Lcom/oneplus/gallery/media/Media;
    :catchall_3
    move-exception v4

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v4

    .end local v17    # "insertedUri":Landroid/net/Uri;
    .end local v20    # "orientationRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Integer;>;"
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_4
    move-exception v4

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v4
.end method
