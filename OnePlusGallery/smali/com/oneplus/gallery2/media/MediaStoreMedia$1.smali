.class final Lcom/oneplus/gallery2/media/MediaStoreMedia$1;
.super Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
.source "MediaStoreMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Handle;",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<*",
            "Landroid/location/Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "addresses":Ljava/util/Map;, "Ljava/util/Map<*Landroid/location/Address;>;"
    # invokes: Lcom/oneplus/gallery2/media/MediaStoreMedia;->onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->access$000(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    .line 102
    return-void
.end method
