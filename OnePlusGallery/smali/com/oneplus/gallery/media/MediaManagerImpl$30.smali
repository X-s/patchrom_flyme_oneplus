.class Lcom/oneplus/gallery/media/MediaManagerImpl$30;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->refreshDirectoryMediaSets(Lcom/oneplus/gallery/media/MediaType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 0

    .prologue
    .line 4260
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 36
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryPathTables:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 4266
    .local v18, "dirPathTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v18, :cond_0

    .line 4268
    new-instance v18, Ljava/util/HashMap;

    .end local v18    # "dirPathTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 4269
    .restart local v18    # "dirPathTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryPathTables:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4273
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 4274
    .local v11, "cond":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    if-nez v4, :cond_2

    .line 4275
    const-string v4, "(media_type=1 OR media_type=3)"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4293
    :goto_0
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->DIR_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5000()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4294
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 4299
    :try_start_0
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 4300
    .local v29, "newDirIdTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4301
    .local v10, "addDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4302
    .local v16, "deleteDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 4303
    .local v32, "overlapDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v28, Landroid/util/LongSparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/LongSparseArray;-><init>()V

    .line 4304
    .local v28, "mediaAddedTimes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4307
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4308
    .local v17, "dir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isHiddenPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4310
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 4311
    .local v24, "id":J
    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v12, v4, v6

    .line 4312
    .local v12, "addedTime":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4314
    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 4315
    .local v14, "currentAddedTime":Ljava/lang/Long;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v12, v4

    if-lez v4, :cond_1

    .line 4316
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4417
    .end local v10    # "addDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v12    # "addedTime":J
    .end local v14    # "currentAddedTime":Ljava/lang/Long;
    .end local v16    # "deleteDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v17    # "dir":Ljava/lang/String;
    .end local v24    # "id":J
    .end local v28    # "mediaAddedTimes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .end local v29    # "newDirIdTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v32    # "overlapDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4278
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v4, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshDirectoryMediaSets() - Unsupported media type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    :cond_3
    :goto_2
    return-void

    .line 4281
    :pswitch_0
    const-string v4, "(media_type=1)"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4284
    :pswitch_1
    const-string v4, "(media_type=3)"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4319
    .restart local v10    # "addDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v12    # "addedTime":J
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "deleteDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v17    # "dir":Ljava/lang/String;
    .restart local v24    # "id":J
    .restart local v28    # "mediaAddedTimes":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v29    # "newDirIdTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v32    # "overlapDirIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 4323
    .end local v12    # "addedTime":J
    .end local v17    # "dir":Ljava/lang/String;
    .end local v24    # "id":J
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 4325
    .local v24, "id":Ljava/lang/Long;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryMediaSetTables:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5100(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/LongSparseArray;

    .line 4329
    .local v19, "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/oneplus/gallery/media/DirectoryMediaSet;

    .line 4330
    .local v33, "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    if-eqz v33, :cond_7

    .line 4332
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4336
    .end local v19    # "dirSetTable":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery/media/DirectoryMediaSet;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v33    # "set":Lcom/oneplus/gallery/media/DirectoryMediaSet;
    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4338
    .end local v24    # "id":Ljava/lang/Long;
    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 4340
    .restart local v24    # "id":Ljava/lang/Long;
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4341
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 4345
    .end local v24    # "id":Ljava/lang/Long;
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 4347
    .restart local v24    # "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 4349
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 4350
    .local v26, "mediaAddedTime":J
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraDirectoryInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v20

    .line 4351
    .local v20, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    if-eqz v20, :cond_e

    .line 4353
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    cmp-long v4, v26, v4

    if-lez v4, :cond_c

    .line 4355
    move-wide/from16 v0, v26

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 4356
    invoke-static/range {v20 .. v20}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->setExtraDirectoryInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)Z

    .line 4364
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2724

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v34, 0x0

    aput-object v24, v9, v34

    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v9, v34

    const/16 v34, 0x2

    aput-object v20, v9, v34

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    move-object/from16 v35, v0

    aput-object v35, v9, v34

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->scheduleUIMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5300(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Message;)V

    .line 4366
    .end local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .end local v26    # "mediaAddedTime":J
    :cond_d
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 4361
    .restart local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .restart local v26    # "mediaAddedTime":J
    :cond_e
    new-instance v20, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    .end local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;-><init>(JJ)V

    .line 4362
    .restart local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    invoke-static/range {v20 .. v20}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->setExtraDirectoryInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)Z

    goto :goto_7

    .line 4370
    .end local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .end local v24    # "id":Ljava/lang/Long;
    .end local v26    # "mediaAddedTime":J
    :cond_f
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 4372
    .restart local v24    # "id":Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraDirectoryInfo(J)Z

    .line 4373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2725

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v24, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4374
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4377
    .end local v24    # "id":Ljava/lang/Long;
    :cond_10
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_11
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 4379
    .restart local v24    # "id":Ljava/lang/Long;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 4380
    .local v31, "oldPath":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 4381
    .local v30, "newPath":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 4384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, v31

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, v30

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4386
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraDirectoryInfo(J)Z

    .line 4387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2725

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v24, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4410
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_DirectoryRenameHandles:Ljava/util/List;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;

    .line 4411
    .local v21, "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;->callOnDirectoryRename(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 4389
    .end local v21    # "handle":Lcom/oneplus/gallery/media/MediaManagerImpl$DirectoryRenameHandle;
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, v31

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, v30

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->isSpecialDirectoryPath(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5200(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 4391
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 4392
    .restart local v26    # "mediaAddedTime":J
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraDirectoryInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v20

    .line 4393
    .restart local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    if-eqz v20, :cond_15

    .line 4395
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    cmp-long v4, v26, v4

    if-lez v4, :cond_14

    .line 4397
    move-wide/from16 v0, v26

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 4398
    invoke-static/range {v20 .. v20}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->setExtraDirectoryInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)Z

    .line 4406
    :cond_14
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2724

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v34, 0x0

    aput-object v24, v9, v34

    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    aput-object v35, v9, v34

    const/16 v34, 0x2

    aput-object v20, v9, v34

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$30;->val$targetMediaType:Lcom/oneplus/gallery/media/MediaType;

    move-object/from16 v35, v0

    aput-object v35, v9, v34

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->scheduleUIMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5300(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Message;)V

    goto/16 :goto_a

    .line 4403
    :cond_15
    new-instance v20, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    .end local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;-><init>(JJ)V

    .line 4404
    .restart local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    invoke-static/range {v20 .. v20}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->setExtraDirectoryInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)Z

    goto :goto_c

    .line 4412
    .end local v20    # "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .end local v26    # "mediaAddedTime":J
    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_16
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    .line 4417
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "id":Ljava/lang/Long;
    .end local v30    # "newPath":Ljava/lang/String;
    .end local v31    # "oldPath":Ljava/lang/String;
    :cond_17
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 4278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
