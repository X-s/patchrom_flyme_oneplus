.class final Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;
.super Lcom/oneplus/gallery2/media/FilteredMediaList;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureModeMediaList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    .line 406
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/oneplus/gallery2/media/FilteredMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaComparator;ILcom/oneplus/gallery2/media/MediaList;Z)V

    .line 404
    return-void
.end method


# virtual methods
.method protected filterMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 415
    :try_start_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 416
    .local v0, "mediaId":J
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get41(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 419
    .end local v0    # "mediaId":J
    :catch_0
    move-exception v2

    .line 420
    .local v2, "tr":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to parse media Id"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v3, 0x0

    return v3
.end method
