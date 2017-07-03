.class final Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;
.super Lcom/oneplus/base/CallbackHandle;
.source "LocationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/LocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReverseGeocodingHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/CallbackHandle",
        "<",
        "Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final locale:Ljava/util/Locale;

.field public final locations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)V
    .locals 7
    .param p3, "locale"    # Ljava/util/Locale;
    .param p4, "callback"    # Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<*",
            "Landroid/location/Location;",
            ">;",
            "Ljava/util/Locale;",
            "Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "locations":Ljava/util/Map;, "Ljava/util/Map<*Landroid/location/Location;>;"
    const/4 v6, 0x0

    .line 57
    iput-object p1, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->this$0:Lcom/oneplus/gallery2/location/LocationManagerImpl;

    .line 58
    const-string v3, "ReverseGeocoding"

    invoke-direct {p0, v3, p4, v6}, Lcom/oneplus/base/CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 53
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locations:Ljava/util/Map;

    .line 59
    iput-object p3, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locale:Ljava/util/Locale;

    .line 60
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Landroid/location/Location;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 63
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 64
    iget-object v3, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Landroid/location/Location;>;"
    .end local v2    # "location":Landroid/location/Location;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 73
    return-void
.end method
