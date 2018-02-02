.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;
.super Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 136
    invoke-direct {p0}, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 1
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
    .line 141
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    .line 142
    return-void
.end method
