.class Lcom/oneplus/gallery/media/MediaManagerImpl$36;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->syncMediaTable(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$queryProjections:[Ljava/lang/String;

.field final synthetic val$querySelection:Ljava/lang/String;

.field final synthetic val$queryUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5094
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->val$queryUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->val$queryProjections:[Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->val$querySelection:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 21
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 5102
    :try_start_0
    new-instance v11, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5103
    .local v11, "currentIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5106
    const/4 v15, 0x0

    .line 5107
    .local v15, "startOffset":I
    const/4 v10, 0x0

    .line 5111
    .local v10, "addedCount":I
    :cond_0
    const/4 v14, 0x0

    .line 5112
    .local v14, "queriedCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->val$queryUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->val$queryProjections:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->val$querySelection:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id DESC LIMIT 256 OFFSET "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .local v12, "cursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 5114
    if-eqz v12, :cond_3

    .line 5116
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_MediaTable:Ljava/util/Map;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1400(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/Map;

    move-result-object v18

    monitor-enter v18
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 5120
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 5121
    .local v4, "id":J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaType;->fromMediaStoreMediaType(I)Lcom/oneplus/gallery/media/MediaType;

    move-result-object v6

    .line 5122
    .local v6, "mediaType":Lcom/oneplus/gallery/media/MediaType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, v12, v3, v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/database/Cursor;II)Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    .line 5123
    .local v7, "media":Lcom/oneplus/gallery/media/Media;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    if-eq v6, v2, :cond_1

    .line 5125
    add-int/lit8 v10, v10, 0x1

    .line 5126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v3, 0x0

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->addToGroupMedia(JLcom/oneplus/gallery/media/Media;I)V
    invoke-static {v2, v4, v5, v7, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3400(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V

    .line 5127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v8, 0x0

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->addToMediaTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    invoke-static/range {v3 .. v8}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 5129
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 5130
    monitor-exit v18

    goto :goto_0

    .end local v4    # "id":J
    .end local v6    # "mediaType":Lcom/oneplus/gallery/media/MediaType;
    .end local v7    # "media":Lcom/oneplus/gallery/media/Media;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 5112
    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5138
    :catchall_1
    move-exception v3

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    :goto_1
    if-eqz v12, :cond_2

    if-eqz v3, :cond_b

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_2
    throw v2

    .line 5103
    .end local v10    # "addedCount":I
    .end local v11    # "currentIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "queriedCount":I
    .end local v15    # "startOffset":I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 5135
    .restart local v10    # "addedCount":I
    .restart local v11    # "currentIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "queriedCount":I
    .restart local v15    # "startOffset":I
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "syncMediaTable() - Fail to query"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 5138
    if-eqz v12, :cond_4

    if-eqz v17, :cond_7

    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 5160
    :cond_4
    :goto_3
    if-lez v10, :cond_5

    .line 5161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6300(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncMediaTable() - Add "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " entries"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5164
    :cond_5
    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 5166
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 5169
    .local v4, "id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/4 v3, 0x0

    move-wide/from16 v0, v18

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromMediaTable(JI)Lcom/oneplus/gallery/media/Media;
    invoke-static {v2, v0, v1, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6400(Lcom/oneplus/gallery/media/MediaManagerImpl;JI)Lcom/oneplus/gallery/media/Media;

    move-result-object v7

    .line 5172
    .restart local v7    # "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v7, :cond_6

    .line 5173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/4 v3, 0x0

    move-wide/from16 v0, v18

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->removeFromGroupMedia(JLcom/oneplus/gallery/media/Media;I)V
    invoke-static {v2, v0, v1, v7, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6500(Lcom/oneplus/gallery/media/MediaManagerImpl;JLcom/oneplus/gallery/media/Media;I)V

    goto :goto_4

    .line 5138
    .end local v4    # "id":Ljava/lang/Long;
    .end local v7    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_9

    if-eqz v17, :cond_a

    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 5139
    :cond_9
    :goto_5
    int-to-long v2, v14

    const-wide/16 v18, 0x100

    cmp-long v2, v2, v18

    if-ltz v2, :cond_4

    .line 5141
    add-int/2addr v15, v14

    .line 5147
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 5149
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_PendingContentProviderAccessHandles:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;

    .line 5150
    .local v9, "accessHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 5151
    if-eqz v9, :cond_0

    .line 5153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "syncMediaTable() - Handle another content provider access first"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->accessContentProvider(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V
    invoke-static {v2, v9}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6100(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;)V

    .line 5155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "syncMediaTable() - Continue synchronization"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 5138
    .end local v9    # "accessHandle":Lcom/oneplus/gallery/media/MediaManagerImpl$ContentProviderAccessHandle;
    :catch_2
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_3
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 5150
    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v2

    .line 5175
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$36;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$6600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncMediaTable() - Remove "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " entries"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5177
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_d
    return-void

    .line 5138
    :catchall_4
    move-exception v2

    move-object/from16 v3, v17

    goto/16 :goto_1
.end method
