.class Lcom/oneplus/gallery/media/MediaManagerImpl$18;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(JLcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$id:J

.field final synthetic val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;J)V
    .locals 1

    .prologue
    .line 3191
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iput-wide p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3197
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3199
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v5, -0x1

    invoke-virtual {v4, p3, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    .line 3203
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v2, :cond_0

    .line 3205
    const-string v4, "_data"

    invoke-static {p3, v4}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3206
    .local v1, "filePath":Ljava/lang/String;
    const-string v4, "mime_type"

    invoke-static {p3, v4}, Lcom/oneplus/database/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3207
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 3209
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v4, v5, v1, v3, v6}, Lcom/oneplus/gallery/media/TempMedia;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;

    move-result-object v2

    .line 3210
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3600(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "obtainMedia() - media is null, create a temp media, path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mimeType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iget-wide v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$id:J

    invoke-virtual {v4, v6, v7, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    .line 3223
    .end local v2    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_0
    return-void

    .line 3216
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iget-wide v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$id:J

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3218
    :catch_0
    move-exception v0

    .line 3220
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3700(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "obtainMedia() - Fail to query"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3221
    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iget-wide v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$18;->val$id:J

    invoke-virtual {v4, v6, v7, v8}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method
