.class final Lcom/oneplus/gallery2/location/LocationManagerImpl;
.super Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;
.source "LocationManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/location/LocationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;
    }
.end annotation


# static fields
.field private static final EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/ExtraKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MSG_REVERSE_GEOCODING_COMPLETED:I = 0x2710

.field private static final m_AddressCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private static m_Executor:Ljava/util/concurrent/ExecutorService;

.field private static final m_GeocodeSearch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeSearch;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_Geocoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/location/Geocoder;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_GeocoderLocale:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_NetworkManager:Lcom/oneplus/net/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

    const-class v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/ExtraKeyGenerator;->generateKey(Ljava/lang/Class;)Lcom/oneplus/gallery2/ExtraKey;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    .line 49
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocodeSearch:Ljava/lang/ThreadLocal;

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "Location manager"

    .line 187
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;)V

    .line 188
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V

    return-void
.end method

.method private isSameLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    .line 256
    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method private onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->verifyAccess()V

    .line 267
    invoke-virtual {p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->getMedia()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method private onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 292
    if-eqz v0, :cond_0

    .line 297
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v1, v0}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v2}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 321
    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v2}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onReverseGeocodingCompleted(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v0, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    .line 354
    if-nez v0, :cond_2

    .line 356
    :goto_0
    return-void

    .line 348
    :cond_0
    return-void

    .line 350
    :cond_1
    return-void

    .line 355
    :cond_2
    iget-object v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    iget-object v2, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->locale:Ljava/util/Locale;

    iget-object v3, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;->onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    goto :goto_0
.end method

.method private static prepareGeocodeSearch(Ljava/util/Locale;)Lcom/amap/api/services/geocoder/GeocodeSearch;
    .locals 2

    .prologue
    .line 376
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocodeSearch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/GeocodeSearch;

    .line 377
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    :cond_0
    new-instance v0, Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;-><init>(Landroid/content/Context;)V

    .line 380
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocodeSearch:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 381
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 383
    :goto_0
    return-object v0

    .line 377
    :cond_1
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private static prepareGeocoder(Ljava/util/Locale;)Landroid/location/Geocoder;
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geocoder;

    .line 363
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :cond_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 366
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 367
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 369
    :goto_0
    return-object v0

    .line 363
    :cond_1
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 21

    .prologue
    .line 391
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    .line 392
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    iget-object v2, v13, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locale:Ljava/util/Locale;

    .line 397
    if-eqz v2, :cond_4

    move-object v10, v2

    .line 401
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 402
    iget-object v2, v13, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 404
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/location/Location;

    const/4 v4, 0x0

    .line 409
    if-eqz v9, :cond_5

    .line 411
    :try_start_0
    new-instance v17, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;-><init>(Landroid/location/Location;)V

    .line 412
    sget-object v3, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 413
    if-nez v3, :cond_7

    move-object v4, v3

    .line 438
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_NetworkManager:Lcom/oneplus/net/NetworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_a

    :cond_0
    const/4 v3, 0x1

    move v12, v3

    move-object v11, v4

    .line 451
    :goto_3
    :try_start_1
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-nez v3, :cond_c

    :cond_1
    move-object v5, v11

    .line 462
    :goto_4
    if-eqz v5, :cond_10

    :cond_2
    move-object v4, v5

    .line 496
    :goto_5
    if-nez v4, :cond_14

    .line 526
    :goto_6
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 528
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 393
    :cond_3
    return-void

    .line 398
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    .line 526
    :cond_5
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 528
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 527
    :cond_6
    return-void

    .line 415
    :cond_7
    :try_start_2
    invoke-virtual {v3}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isSameLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 433
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 434
    goto :goto_2

    .line 417
    :cond_8
    new-instance v4, Landroid/location/Address;

    invoke-direct {v4, v10}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 418
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Address;->setLatitude(D)V

    .line 419
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Address;->setLongitude(D)V

    .line 420
    invoke-virtual {v3}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v3}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v3}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 426
    invoke-virtual {v3, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 427
    invoke-virtual {v3, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 526
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 528
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 527
    :cond_9
    return-void

    .line 440
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_NetworkManager:Lcom/oneplus/net/NetworkManager;

    sget-object v5, Lcom/oneplus/net/NetworkManager;->PROP_IS_NETWORK_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v5}, Lcom/oneplus/net/NetworkManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 526
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 528
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 527
    :cond_b
    return-void

    .line 451
    :cond_c
    :try_start_4
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v3

    if-nez v3, :cond_1

    .line 453
    invoke-static {v10}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->prepareGeocoder(Ljava/util/Locale;)Landroid/location/Geocoder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v3

    .line 454
    if-nez v3, :cond_e

    :cond_d
    const/4 v3, 0x0

    .line 455
    :goto_7
    if-nez v3, :cond_f

    move-object v5, v3

    goto/16 :goto_4

    .line 454
    :cond_e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    .line 457
    :cond_f
    :try_start_5
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Address;->setLatitude(D)V

    .line 458
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Address;->setLongitude(D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v3

    goto/16 :goto_4

    .line 462
    :cond_10
    :try_start_6
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    new-instance v3, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v3, v6, v7, v0, v1}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 465
    new-instance v4, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    const/high16 v6, 0x43480000    # 200.0f

    const-string/jumbo v7, "autonavi"

    invoke-direct {v4, v3, v6, v7}, Lcom/amap/api/services/geocoder/RegeocodeQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V

    .line 466
    invoke-static {v10}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->prepareGeocodeSearch(Ljava/util/Locale;)Lcom/amap/api/services/geocoder/GeocodeSearch;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v6

    .line 467
    if-nez v6, :cond_11

    move-object v4, v5

    goto/16 :goto_5

    .line 469
    :cond_11
    new-instance v4, Landroid/location/Address;

    invoke-direct {v4, v10}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 470
    :try_start_7
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    .line 471
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    .line 472
    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getAdCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 479
    :cond_12
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v5, "country_china"

    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.oneplus.gallery"

    .line 480
    invoke-virtual {v3, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 481
    if-nez v5, :cond_13

    const-string/jumbo v3, "China"

    :goto_8
    invoke-virtual {v4, v3}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 485
    :goto_9
    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getDistrict()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getTownship()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getBuilding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 490
    invoke-virtual {v4, v3, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v3, 0x1

    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getAdCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getBuilding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 500
    :catch_0
    move-exception v3

    .line 504
    :goto_a
    if-gtz v12, :cond_15

    .line 511
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reverseGeocoding() - Fail to get address for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6

    .line 523
    :catchall_0
    move-exception v3

    .line 526
    :goto_b
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 528
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    throw v3

    :sswitch_0
    :try_start_9
    const-string/jumbo v5, "710000"

    .line 472
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_9

    :sswitch_1
    const-string/jumbo v5, "900000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_9

    .line 481
    :cond_13
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 497
    :cond_14
    sget-object v3, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    .line 512
    :catch_1
    move-exception v3

    .line 517
    :goto_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reverseGeocoding() - Fail to get address for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 506
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reverseGeocoding() - Fail to get address for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", retry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 507
    add-int/lit8 v3, v12, -0x1

    move v12, v3

    move-object v11, v4

    .line 508
    goto/16 :goto_3

    .line 527
    :cond_16
    return-void

    :cond_17
    return-void

    .line 531
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v14

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "reverseGeocoding() - Take "

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " ms to get "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, " address(es)"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 540
    :goto_d
    return-void

    .line 537
    :cond_19
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->locale:Ljava/util/Locale;

    const/16 v2, 0x2710

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_d

    .line 523
    :catchall_1
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_b

    :catchall_2
    move-exception v3

    move-object v4, v11

    goto/16 :goto_b

    :catchall_3
    move-exception v3

    move-object v4, v5

    goto/16 :goto_b

    .line 512
    :catch_2
    move-exception v3

    move-object v4, v11

    goto/16 :goto_c

    :catch_3
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_c

    :catch_4
    move-exception v3

    move-object v4, v5

    goto/16 :goto_c

    .line 500
    :catch_5
    move-exception v3

    move-object v4, v11

    goto/16 :goto_a

    :catch_6
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_a

    :catch_7
    move-exception v3

    move-object v4, v5

    goto/16 :goto_a

    .line 472
    nop

    :sswitch_data_0
    .sparse-switch
        0x60a395da -> :sswitch_0
        0x63ff2f97 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected addCallbacksBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public createAddressClassifier(I)Lcom/oneplus/gallery2/location/AddressClassifier;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V

    return-object v0
.end method

.method public getAddresses(Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)Lcom/oneplus/base/Handle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<*",
            "Landroid/location/Location;",
            ">;",
            "Ljava/util/Locale;",
            "Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;",
            "I)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->verifyAccess()V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    if-nez p1, :cond_2

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAddresses() - No locations to get addresses"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v2

    .line 214
    :cond_1
    return-object v2

    .line 215
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)V

    .line 222
    new-instance v1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;)V

    .line 223
    sget-object v2, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 226
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 241
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->handleMessage(Landroid/os/Message;)V

    .line 244
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onReverseGeocodingCompleted(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onInitialize()V

    .line 280
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_NetworkManager:Lcom/oneplus/net/NetworkManager;

    if-eqz v0, :cond_1

    .line 285
    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x2

    .line 281
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/oneplus/net/NetworkManager;

    .line 284
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/net/NetworkManager;

    iput-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_NetworkManager:Lcom/oneplus/net/NetworkManager;

    goto :goto_1
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 331
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_ADDRESS_CHANGED:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 336
    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 339
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    invoke-virtual {v1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->updateMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 338
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 332
    :cond_0
    return-void

    .line 337
    :cond_1
    return-void

    .line 340
    :cond_2
    return-void
.end method
