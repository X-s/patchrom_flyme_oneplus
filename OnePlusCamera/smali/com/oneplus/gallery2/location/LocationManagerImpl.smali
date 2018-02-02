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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/oneplus/gallery2/media/Media;->EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

    const-class v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/ExtraKeyGenerator;->generateKey(Ljava/lang/Class;)Lcom/oneplus/gallery2/ExtraKey;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "Location manager"

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;)V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V

    return-void
.end method

.method private onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->verifyAccess()V

    .line 246
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

    .line 247
    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method private onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 268
    if-eqz v0, :cond_0

    .line 273
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v1, v0}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v2}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 297
    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v2}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onReverseGeocodingCompleted(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 323
    iget-object v0, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    .line 330
    if-nez v0, :cond_2

    .line 332
    :goto_0
    return-void

    .line 324
    :cond_0
    return-void

    .line 326
    :cond_1
    return-void

    .line 331
    :cond_2
    iget-object v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    iget-object v2, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->locale:Ljava/util/Locale;

    iget-object v3, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;->onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    goto :goto_0
.end method

.method private reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 19

    .prologue
    .line 339
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    .line 340
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    sget-object v2, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Geocoder;

    .line 345
    iget-object v3, v13, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locale:Ljava/util/Locale;

    .line 346
    if-eqz v3, :cond_3

    move-object v12, v3

    .line 348
    :goto_0
    if-nez v2, :cond_4

    .line 350
    :cond_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    invoke-direct {v3, v2, v12}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 351
    sget-object v2, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 352
    sget-object v2, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 356
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 357
    iget-object v2, v13, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/location/Location;

    const/4 v4, 0x0

    .line 361
    if-nez v9, :cond_5

    .line 418
    :cond_1
    :goto_3
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 420
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 341
    :cond_2
    return-void

    .line 347
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v12, v3

    goto :goto_0

    .line 348
    :cond_4
    sget-object v3, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_1

    .line 363
    :cond_5
    new-instance v17, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;-><init>(Landroid/location/Location;)V

    .line 364
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    .line 365
    if-nez v4, :cond_8

    :cond_6
    const/4 v5, 0x1

    move v10, v5

    move-object v11, v4

    .line 387
    :goto_4
    :try_start_0
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 388
    if-nez v4, :cond_9

    :cond_7
    const/4 v4, 0x0

    .line 389
    :goto_5
    if-eqz v4, :cond_1

    .line 391
    :try_start_1
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Address;->setLatitude(D)V

    .line 392
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Address;->setLongitude(D)V

    .line 393
    sget-object v5, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 395
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    .line 399
    :goto_6
    if-gtz v10, :cond_a

    .line 406
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "reverseGeocoding() - Fail to get address for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 407
    goto/16 :goto_3

    .line 365
    :cond_8
    invoke-virtual {v4}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 367
    new-instance v5, Landroid/location/Address;

    invoke-direct {v5, v12}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 368
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Address;->setLatitude(D)V

    .line 369
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Address;->setLongitude(D)V

    .line 370
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v4}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v4}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 376
    invoke-virtual {v4, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 377
    invoke-virtual {v4, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move-object v4, v5

    .line 379
    goto/16 :goto_3

    .line 388
    :cond_9
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 401
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "reverseGeocoding() - Fail to get address for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", retry"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    add-int/lit8 v4, v10, -0x1

    move v10, v4

    move-object v11, v5

    .line 403
    goto/16 :goto_4

    .line 407
    :catch_1
    move-exception v4

    .line 412
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "reverseGeocoding() - Fail to get address for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v11

    goto/16 :goto_3

    .line 419
    :cond_b
    return-void

    .line 422
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v14

    .line 423
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

    .line 426
    invoke-static {v13}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 431
    :goto_8
    return-void

    .line 428
    :cond_d
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->locale:Ljava/util/Locale;

    const/16 v2, 0x2710

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_8

    .line 407
    :catch_2
    move-exception v5

    move-object v11, v4

    move-object v4, v5

    goto :goto_7

    .line 395
    :catch_3
    move-exception v4

    move-object v5, v11

    goto/16 :goto_6
.end method


# virtual methods
.method protected addCallbacksBeforeMediaTableReady()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public createAddressClassifier(I)Lcom/oneplus/gallery2/location/AddressClassifier;
    .locals 2

    .prologue
    .line 194
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

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->verifyAccess()V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    if-nez p1, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAddresses() - No locations to get addresses"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object v2

    .line 205
    :cond_1
    return-object v2

    .line 206
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)V

    .line 214
    new-instance v1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;)V

    .line 215
    sget-object v2, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 218
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 233
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->handleMessage(Landroid/os/Message;)V

    .line 236
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onReverseGeocodingCompleted(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onInitialize()V

    .line 259
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    .line 260
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 307
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_ADDRESS_CHANGED:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 312
    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_2

    .line 315
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    invoke-virtual {v1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->updateMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 314
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 308
    :cond_0
    return-void

    .line 313
    :cond_1
    return-void

    .line 316
    :cond_2
    return-void
.end method
