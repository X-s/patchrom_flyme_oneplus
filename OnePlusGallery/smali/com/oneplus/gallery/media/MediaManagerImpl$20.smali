.class Lcom/oneplus/gallery/media/MediaManagerImpl$20;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;)V
    .locals 0

    .prologue
    .line 3287
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3293
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3295
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const/4 v4, -0x1

    invoke-virtual {v3, p3, v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/database/Cursor;I)Lcom/oneplus/gallery/media/Media;

    move-result-object v2

    .line 3299
    .local v2, "media":Lcom/oneplus/gallery/media/Media;
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$mimeType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3301
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$mimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v7}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/oneplus/gallery/media/TempMedia;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;

    move-result-object v2

    .line 3302
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3800(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "obtainMedia() - media is null, create a temp media, path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mimeType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    .line 3317
    .end local v2    # "media":Lcom/oneplus/gallery/media/Media;
    :goto_0
    return-void

    .line 3308
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3309
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    const-wide/16 v4, -0x1

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v6

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$filePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$mimeType:Ljava/lang/String;

    iget-object v10, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v10}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/oneplus/gallery/media/TempMedia;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3312
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3314
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "obtainMedia() - Fail to query"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3315
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$20;->val$obtainHandle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    goto :goto_0
.end method
