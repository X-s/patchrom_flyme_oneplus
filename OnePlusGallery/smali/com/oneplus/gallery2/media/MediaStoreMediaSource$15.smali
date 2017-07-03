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

.field final synthetic val$addFlags:I

.field final synthetic val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

.field final synthetic val$removeFlags:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V
    .locals 0

    .prologue
    .line 2015
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    iput p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$addFlags:I

    iput p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$removeFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 2022
    .local v0, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-nez v0, :cond_2

    .line 2023
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local v0    # "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(J)V

    .line 2024
    .restart local v0    # "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_2
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$addFlags:I

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 2025
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$removeFlags:I

    xor-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    .line 2026
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2027
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1800(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOnePlusFlags() - Fail to update OnePlus flags for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$15;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
