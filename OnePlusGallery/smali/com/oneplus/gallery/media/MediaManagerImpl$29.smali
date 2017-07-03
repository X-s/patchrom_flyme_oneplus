.class Lcom/oneplus/gallery/media/MediaManagerImpl$29;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->queryMediaInMediaStore(Ljava/lang/Long;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

.field final synthetic val$mediaId:Ljava/lang/Long;

.field final synthetic val$mediaType:Lcom/oneplus/gallery/media/MediaType;

.field final synthetic val$sortOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;Ljava/lang/Long;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;)V
    .locals 0

    .prologue
    .line 4132
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaId:Ljava/lang/Long;

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$sortOrder:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 12
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4137
    const/4 v6, 0x0

    .line 4141
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    sget-object v3, Lcom/oneplus/gallery/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery/media/MediaType;

    if-eq v2, v3, :cond_5

    move v7, v0

    .line 4142
    .local v7, "hasMediaType":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 4143
    .local v8, "selection":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaId:Ljava/lang/Long;

    if-eqz v2, :cond_7

    if-eqz v7, :cond_6

    const/4 v2, 0x2

    :goto_1
    new-array v4, v2, [Ljava/lang/String;

    .line 4144
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaId:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 4146
    const-string v2, "_id"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4147
    const-string v2, "=?"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 4150
    :cond_0
    if-eqz v7, :cond_2

    .line 4152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4153
    const-string v2, " AND "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4154
    :cond_1
    const-string v2, "media_type"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4155
    const-string v2, "=?"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaType:[I

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-virtual {v3}, Lcom/oneplus/gallery/media/MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4168
    :cond_2
    :goto_2
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->CONTENT_URI_FILE:Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4800()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$sortOrder:Ljava/lang/String;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4171
    if-eqz v6, :cond_3

    .line 4172
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$callback:Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;

    invoke-interface {v0, p1, p2, v6}, Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;->onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4176
    :cond_3
    if-eqz v6, :cond_4

    .line 4177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4179
    :cond_4
    return-void

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "hasMediaType":Z
    .end local v8    # "selection":Ljava/lang/StringBuilder;
    :cond_5
    move v7, v1

    .line 4141
    goto :goto_0

    .restart local v7    # "hasMediaType":Z
    .restart local v8    # "selection":Ljava/lang/StringBuilder;
    :cond_6
    move v2, v0

    .line 4143
    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    move v2, v0

    goto :goto_1

    :cond_8
    move v2, v1

    goto :goto_1

    .line 4159
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaId:Ljava/lang/Long;

    if-eqz v2, :cond_a

    :goto_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4176
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "hasMediaType":Z
    .end local v8    # "selection":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 4177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "hasMediaType":Z
    .restart local v8    # "selection":Ljava/lang/StringBuilder;
    :cond_a
    move v0, v1

    .line 4159
    goto :goto_3

    .line 4162
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$29;->val$mediaId:Ljava/lang/Long;

    if-eqz v2, :cond_b

    :goto_4
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_4

    .line 4156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
