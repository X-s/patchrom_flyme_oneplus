.class Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;
.super Ljava/lang/Object;
.source "MediaStoreMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaStoreMediaSet;->refreshMediaList(Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

.field final synthetic val$srcContentUris:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaStoreMediaSet;Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$srcContentUris:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessContentProvider(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentProviderClient;)V
    .locals 10
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "client"    # Landroid/content/ContentProviderClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->getComparator()Lcom/oneplus/gallery/media/MediaComparator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaComparator;->getContentProviderSortOrder()Ljava/lang/String;

    move-result-object v5

    .line 1325
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;->getMaxMediaCount()I

    move-result v7

    .line 1326
    .local v7, "maxMediaCount":I
    if-ltz v7, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1328
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getMediaColumns()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryCondition:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$500(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_QueryConditionArgs:[Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$600(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1329
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1334
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1336
    invoke-static {v6}, Lcom/oneplus/gallery/media/MediaStoreMedia;->getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v9

    .line 1337
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$srcContentUris:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    # getter for: Lcom/oneplus/gallery/media/MediaStoreMediaSet;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaStoreMediaSet;->access$700(Lcom/oneplus/gallery/media/MediaStoreMediaSet;)Lcom/oneplus/gallery/media/OPMediaManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v8

    .line 1340
    .local v8, "media":Lcom/oneplus/gallery/media/Media;
    if-eqz v8, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/16 v1, -0x271a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1350
    .end local v8    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v9    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1345
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$srcContentUris:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1346
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->this$0:Lcom/oneplus/gallery/media/MediaStoreMediaSet;

    const/16 v1, -0x271b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$mediaList:Lcom/oneplus/gallery/media/MediaStoreMediaSet$MediaListImpl;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaStoreMediaSet$8;->val$srcContentUris:Ljava/util/HashSet;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1350
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1353
    :cond_4
    return-void
.end method
