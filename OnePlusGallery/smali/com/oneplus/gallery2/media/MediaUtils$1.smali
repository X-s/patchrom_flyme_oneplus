.class final Lcom/oneplus/gallery2/media/MediaUtils$1;
.super Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V
    .locals 11
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "mediaContentUri"    # Landroid/net/Uri;
    .param p3, "result"    # I
    .param p4, "flags"    # I

    .prologue
    .line 313
    if-nez p2, :cond_2

    .line 315
    const-string v0, "MediaUtils"

    const-string v1, "getMedia() - No content URI for "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    const-string v3, ", try creating temporary media"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v4

    .line 317
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v4, :cond_1

    .line 319
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    .line 334
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    const-string v0, "MediaUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMedia() - Fail to create temporary media for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_0

    .line 325
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 328
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    const-string v0, "MediaUtils"

    const-string v1, "getMedia() - Media content URI for \'"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-static {p2, v0, v1, p4}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_0

    .line 332
    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v7, p0, Lcom/oneplus/gallery2/media/MediaUtils$1;->val$contentUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method
