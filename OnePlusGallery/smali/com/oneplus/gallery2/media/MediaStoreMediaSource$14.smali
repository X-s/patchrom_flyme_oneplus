.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;
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

.field final synthetic val$addrLine0:Ljava/lang/String;

.field final synthetic val$addrLine1:Ljava/lang/String;

.field final synthetic val$adminArea:Ljava/lang/String;

.field final synthetic val$country:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;

.field final synthetic val$lat:D

.field final synthetic val$lng:D

.field final synthetic val$locale:Ljava/lang/String;

.field final synthetic val$locality:Ljava/lang/String;

.field final synthetic val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

.field final synthetic val$subAdminArea:Ljava/lang/String;

.field final synthetic val$subLocality:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$locale:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$lat:D

    iput-wide p6, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$lng:D

    iput-object p8, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$country:Ljava/lang/String;

    iput-object p9, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$adminArea:Ljava/lang/String;

    iput-object p10, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$subAdminArea:Ljava/lang/String;

    iput-object p11, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$locality:Ljava/lang/String;

    iput-object p12, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$subLocality:Ljava/lang/String;

    iput-object p13, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$feature:Ljava/lang/String;

    iput-object p14, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$addrLine0:Ljava/lang/String;

    iput-object p15, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$addrLine1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1960
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 1963
    .local v0, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-nez v0, :cond_2

    .line 1964
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local v0    # "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getMediaId()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;-><init>(J)V

    .line 1965
    .restart local v0    # "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$locale:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    .line 1966
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$lat:D

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    .line 1967
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$lng:D

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    .line 1968
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$country:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    .line 1969
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$adminArea:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    .line 1970
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$subAdminArea:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    .line 1971
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$locality:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    .line 1972
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$subLocality:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    .line 1973
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$feature:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    .line 1974
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$addrLine0:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    .line 1975
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$addrLine1:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    .line 1976
    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1977
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # getter for: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1700(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAddress() - Fail to update address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$14;->val$media:Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
