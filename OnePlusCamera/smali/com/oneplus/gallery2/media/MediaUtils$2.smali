.class Lcom/oneplus/gallery2/media/MediaUtils$2;
.super Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$contentUri:Landroid/net/Uri;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$mimeType:Ljava/lang/String;

.field private final synthetic val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 379
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaStoreAccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/oneplus/base/Handle;Landroid/net/Uri;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 384
    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v1, "getMedia() - No content URI for "

    .line 386
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    const-string/jumbo v4, ", try creating temporary media"

    invoke-static {v0, v1, v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v4

    .line 388
    if-nez v4, :cond_3

    const-string/jumbo v0, "MediaUtils"

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getMedia() - Fail to create temporary media for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-nez v0, :cond_5

    .line 397
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->isPathInHiddenDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v1, "getMedia() - Media content URI for \'"

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$filePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\' is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-static {p2, v0, v1, p4}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    :cond_2
    :goto_1
    return-void

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-nez v0, :cond_4

    .line 392
    :goto_2
    return-void

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_2

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    move-object v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 402
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$source:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$2;->val$contentUri:Landroid/net/Uri;

    move-object v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1
.end method
