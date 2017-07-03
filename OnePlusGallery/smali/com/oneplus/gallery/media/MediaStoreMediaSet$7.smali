.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;
.super Ljava/lang/Object;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

.field final synthetic val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

.field final synthetic val$maxMediaCount:I

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaComparator;ILcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    iput p3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$maxMediaCount:I

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 32
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    invoke-virtual {v2}, Lcom/oneplus/gallery/media/MediaComparator;->getContentProviderSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 1159
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$500(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$600(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1160
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 1161
    .local v22, "startTime":J
    move-wide/from16 v16, v22

    .line 1162
    .local v16, "lastUpdateTime":J
    const/4 v14, 0x1

    .line 1163
    .local v14, "isFirstUpdate":Z
    const/16 v28, 0x0

    .line 1164
    .local v28, "totalMediaCount":I
    const/16 v20, 0x0

    .line 1165
    .local v20, "selectedMediaCount":I
    const/16 v24, 0x0

    .line 1166
    .local v24, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$maxMediaCount:I

    if-ltz v2, :cond_2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v15, "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_0
    if-eqz v8, :cond_a

    .line 1171
    :try_start_0
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v21, "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    move-object/from16 v25, v24

    .line 1172
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .local v25, "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1174
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1175
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    invoke-interface {v2, v12, v13}, Lcom/oneplus/gallery/media/OPMediaManager;->isMediaRecycled(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v18

    .line 1178
    .local v18, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v18, :cond_0

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainGroupMedia(Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/media/GroupMedia;

    move-result-object v9

    .line 1181
    .local v9, "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    if-eqz v9, :cond_1

    .line 1183
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$800(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openMediaList() - Group media: "

    invoke-static {v2, v3, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1187
    move-object/from16 v18, v9

    .line 1189
    :cond_1
    add-int/lit8 v28, v28, 0x1

    .line 1190
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1191
    if-eqz v15, :cond_8

    .line 1193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$maxMediaCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    move-object/from16 v0, v18

    invoke-static {v15, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v19

    .line 1196
    .local v19, "mediaIndex":I
    if-gez v19, :cond_4

    .line 1198
    xor-int/lit8 v19, v19, -0x1

    .line 1199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$maxMediaCount:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 1201
    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$maxMediaCount:I

    if-lt v2, v3, :cond_3

    .line 1203
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v15, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1204
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 1166
    .end local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v12    # "id":J
    .end local v15    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .end local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v19    # "mediaIndex":I
    .end local v21    # "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1206
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .restart local v12    # "id":J
    .restart local v15    # "localSortedMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v19    # "mediaIndex":I
    .restart local v21    # "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_3
    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1207
    add-int/lit8 v20, v20, 0x1

    :cond_4
    move-object/from16 v24, v25

    .end local v19    # "mediaIndex":I
    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_5
    :goto_3
    move-object/from16 v25, v24

    .line 1265
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto/16 :goto_1

    .line 1213
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$comparator:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/gallery/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_11

    .line 1216
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v25

    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_3

    .line 1220
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_7
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    const/16 v20, 0x1

    move-object/from16 v24, v25

    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_3

    .line 1227
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_8
    if-nez v25, :cond_10

    .line 1228
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1229
    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :goto_4
    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v20, v20, 0x1

    .line 1231
    if-nez v14, :cond_c

    .line 1233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 1234
    .local v26, "time":J
    sub-long v10, v26, v16

    .line 1235
    .local v10, "duration":J
    const-wide/16 v2, 0x1f4

    cmp-long v2, v10, v2

    if-ltz v2, :cond_5

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1239
    const/16 v24, 0x0

    .line 1266
    .end local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v10    # "duration":J
    .end local v12    # "id":J
    .end local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v26    # "time":J
    :goto_5
    if-eqz v15, :cond_f

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/16 v3, -0x271a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    move-object/from16 v30, v0

    aput-object v30, v6, v29

    const/16 v29, 0x1

    aput-object v15, v6, v29

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1273
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$900(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openMediaList() - Take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to select "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1277
    .end local v21    # "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    :cond_a
    return-void

    .line 1242
    .restart local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .restart local v10    # "duration":J
    .restart local v12    # "id":J
    .restart local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v21    # "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    .restart local v26    # "time":J
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/16 v3, -0x271a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    move-object/from16 v30, v0

    aput-object v30, v6, v29

    const/16 v29, 0x1

    aput-object v24, v6, v29

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1243
    const/16 v24, 0x0

    .line 1244
    move-wide/from16 v16, v26

    goto/16 :goto_3

    .line 1249
    .end local v10    # "duration":J
    .end local v26    # "time":J
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 1250
    .restart local v26    # "time":J
    sub-long v10, v26, v16

    .line 1251
    .restart local v10    # "duration":J
    const/16 v2, 0x20

    move/from16 v0, v28

    if-ge v0, v2, :cond_d

    const-wide/16 v2, 0x1f4

    cmp-long v2, v10, v2

    if-ltz v2, :cond_5

    .line 1253
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    sget-object v3, Lcom/oneplus/gallery/media/MediaList;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1255
    const/16 v24, 0x0

    .line 1256
    goto/16 :goto_5

    .line 1258
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/16 v3, -0x271a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    move-object/from16 v30, v0

    aput-object v30, v6, v29

    const/16 v29, 0x1

    aput-object v24, v6, v29

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 1259
    const/16 v24, 0x0

    .line 1260
    move-wide/from16 v16, v26

    .line 1261
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1268
    .end local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v10    # "duration":J
    .end local v12    # "id":J
    .end local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v26    # "time":J
    :cond_f
    if-eqz v24, :cond_9

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/16 v3, -0x271a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    move-object/from16 v30, v0

    aput-object v30, v6, v29

    const/16 v29, 0x1

    aput-object v24, v6, v29

    invoke-static {v2, v3, v4, v5, v6}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_6

    .line 1273
    .end local v21    # "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    :catchall_0
    move-exception v2

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$7;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$900(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openMediaList() - Take "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v30, v30, v22

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to select "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " media"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1273
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v21    # "tempGroupMedia":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery/media/GroupMedia;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :catchall_1
    move-exception v2

    move-object/from16 v24, v25

    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto :goto_7

    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .restart local v12    # "id":J
    .restart local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_10
    move-object/from16 v24, v25

    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto/16 :goto_4

    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_11
    move-object/from16 v24, v25

    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto/16 :goto_3

    .end local v9    # "groupMedia":Lcom/oneplus/gallery/media/GroupMedia;
    .end local v12    # "id":J
    .end local v18    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :cond_12
    move-object/from16 v24, v25

    .end local v25    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    .restart local v24    # "tempMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    goto/16 :goto_5
.end method
