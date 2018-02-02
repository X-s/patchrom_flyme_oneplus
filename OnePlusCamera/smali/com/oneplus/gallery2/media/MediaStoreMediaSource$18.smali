.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final synthetic val$addrLine0:Ljava/lang/String;

.field private final synthetic val$addrLine1:Ljava/lang/String;

.field private final synthetic val$adminArea:Ljava/lang/String;

.field private final synthetic val$country:Ljava/lang/String;

.field private final synthetic val$feature:Ljava/lang/String;

.field private final synthetic val$lat:D

.field private final synthetic val$lng:D

.field private final synthetic val$locale:Ljava/lang/String;

.field private final synthetic val$locality:Ljava/lang/String;

.field private final synthetic val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

.field private final synthetic val$subAdminArea:Ljava/lang/String;

.field private final synthetic val$subLocality:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$locale:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$lat:D

    iput-wide p6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$lng:D

    iput-object p8, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$country:Ljava/lang/String;

    iput-object p9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$adminArea:Ljava/lang/String;

    iput-object p10, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$subAdminArea:Ljava/lang/String;

    iput-object p11, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$locality:Ljava/lang/String;

    iput-object p12, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$subLocality:Ljava/lang/String;

    iput-object p13, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$feature:Ljava/lang/String;

    iput-object p14, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$addrLine0:Ljava/lang/String;

    iput-object p15, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$addrLine1:Ljava/lang/String;

    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 2311
    if-eqz v0, :cond_1

    .line 2313
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$locale:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    .line 2314
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$lat:D

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    .line 2315
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$lng:D

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    .line 2316
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$country:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    .line 2317
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$adminArea:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    .line 2318
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$subAdminArea:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    .line 2319
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$locality:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    .line 2320
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$subLocality:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    .line 2321
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$feature:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    .line 2322
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$addrLine0:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    .line 2323
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$addrLine1:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    .line 2324
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2326
    :goto_1
    return-void

    .line 2309
    :cond_0
    return-void

    .line 2312
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(J)V

    goto :goto_0

    .line 2325
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$8(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateAddress() - Fail to update address for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$18;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
