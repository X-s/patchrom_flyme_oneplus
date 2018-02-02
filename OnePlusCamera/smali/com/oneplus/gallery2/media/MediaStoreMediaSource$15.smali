.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final synthetic val$addFlags:I

.field private final synthetic val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

.field private final synthetic val$removeFlags:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    iput p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$addFlags:I

    iput p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$removeFlags:I

    .line 2160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 2168
    if-eqz v0, :cond_1

    .line 2170
    :goto_0
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$addFlags:I

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 2171
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$removeFlags:I

    xor-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 2172
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    :goto_1
    return-void

    .line 2166
    :cond_0
    return-void

    .line 2169
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(J)V

    goto :goto_0

    .line 2173
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$5(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateOnePlusFlags() - Fail to update OnePlus flags for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
