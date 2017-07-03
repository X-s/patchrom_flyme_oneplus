.class final Lcom/oneplus/gallery2/location/LocationManagerImpl;
.super Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;
.source "LocationManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/location/LocationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/location/LocationManagerImpl$1;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;,
        Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;
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
    .param p1, "app"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 178
    const-string v0, "Location manager"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/location/LocationManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/location/LocationManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/location/LocationManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;
    .param p2, "x2"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/location/LocationManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V

    return-void
.end method

.method private onAddressClassifierReleased(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;)V
    .locals 3
    .param p1, "classifier"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->verifyAccess()V

    .line 246
    invoke-virtual {p1}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->getMedia()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 247
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_0

    .line 248
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    return-void
.end method

.method private onMediaAddedToAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "classifier"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 267
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 268
    .local v0, "classifierList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;>;"
    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "classifierList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .restart local v0    # "classifierList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;>;"
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v1, v0}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    .line 273
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method private onMediaRemovedFromAddressClassifier(Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 3
    .param p1, "classifier"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v2, 0x0

    .line 296
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v1, v2}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 297
    .local v0, "classifierList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    invoke-interface {p2, v1, v2}, Lcom/oneplus/gallery2/media/Media;->putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V

    .line 299
    :cond_0
    return-void
.end method

.method private onReverseGeocodingCompleted(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 5
    .param p1, "task"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    .prologue
    .line 323
    iget-object v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    .line 330
    .local v0, "callback":Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    iget-object v2, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->locale:Ljava/util/Locale;

    iget-object v3, p1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;->onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    goto :goto_0
.end method

.method private reverseGeocoding(Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;)V
    .locals 22
    .param p1, "task"    # Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    .prologue
    .line 339
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->handle:Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    .line 340
    .local v14, "handle":Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;
    invoke-static {v14}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Geocoder;

    .line 345
    .local v3, "geocoder":Landroid/location/Geocoder;
    iget-object v0, v14, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    .line 346
    .local v16, "locale":Ljava/util/Locale;
    if-nez v16, :cond_2

    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    .line 348
    :cond_2
    if-eqz v3, :cond_3

    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 350
    :cond_3
    new-instance v3, Landroid/location/Geocoder;

    .end local v3    # "geocoder":Landroid/location/Geocoder;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 351
    .restart local v3    # "geocoder":Landroid/location/Geocoder;
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Geocoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 352
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_GeocoderLocale:Ljava/lang/ThreadLocal;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 356
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 357
    .local v20, "time":J
    iget-object v4, v14, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;->locations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 359
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Landroid/location/Location;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/location/Location;

    .line 360
    .local v17, "location":Landroid/location/Location;
    const/4 v2, 0x0

    .line 361
    .local v2, "address":Landroid/location/Address;
    if-eqz v17, :cond_5

    .line 363
    new-instance v11, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;-><init>(Landroid/location/Location;)V

    .line 364
    .local v11, "cacheKey":Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "address":Landroid/location/Address;
    check-cast v2, Landroid/location/Address;

    .line 365
    .restart local v2    # "address":Landroid/location/Address;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 367
    new-instance v18, Landroid/location/Address;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 368
    .local v18, "newAddress":Landroid/location/Address;
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/location/Address;->setLatitude(D)V

    .line 369
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/location/Address;->setLongitude(D)V

    .line 370
    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 376
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 377
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 378
    move-object/from16 v2, v18

    .line 418
    .end local v11    # "cacheKey":Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
    .end local v18    # "newAddress":Landroid/location/Address;
    :cond_5
    :goto_2
    invoke-static {v14}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 382
    .restart local v11    # "cacheKey":Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
    :cond_6
    const/16 v19, 0x1

    .line 387
    .local v19, "retryCount":I
    :goto_3
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 388
    .local v10, "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    move-object v2, v4

    .line 389
    :goto_4
    if-eqz v2, :cond_5

    .line 391
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Address;->setLatitude(D)V

    .line 392
    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Address;->setLongitude(D)V

    .line 393
    sget-object v4, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_AddressCache:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 397
    .end local v10    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v13

    .line 399
    .local v13, "ex":Ljava/io/IOException;
    if-lez v19, :cond_8

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reverseGeocoding() - Fail to get address for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", retry"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 388
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v10    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 406
    .end local v10    # "addressList":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v13    # "ex":Ljava/io/IOException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reverseGeocoding() - Fail to get address for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 410
    .end local v13    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 412
    .local v13, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reverseGeocoding() - Fail to get address for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 422
    .end local v2    # "address":Landroid/location/Address;
    .end local v11    # "cacheKey":Lcom/oneplus/gallery2/location/LocationManagerImpl$LocationCacheKey;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Landroid/location/Location;>;"
    .end local v13    # "ex":Ljava/lang/Throwable;
    .end local v17    # "location":Landroid/location/Location;
    .end local v19    # "retryCount":I
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v20, v4, v20

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "reverseGeocoding() - Take "

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, " ms to get "

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->result:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, " address(es)"

    invoke-static/range {v4 .. v9}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    invoke-static {v14}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;->locale:Ljava/util/Locale;

    .line 429
    const/16 v4, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v4, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto/16 :goto_0
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
    .param p1, "flags"    # I

    .prologue
    .line 194
    new-instance v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$1;)V

    return-object v0
.end method

.method public getAddresses(Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)Lcom/oneplus/base/Handle;
    .locals 7
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;
    .param p4, "flags"    # I
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
    .local p1, "locations":Ljava/util/Map;, "Ljava/util/Map<*Landroid/location/Location;>;"
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->verifyAccess()V

    .line 204
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/location/LocationManagerImpl;->isRunningOrInitializing(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-object v0

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "getAddresses() - No locations to get addresses"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)V

    .line 214
    .local v0, "handle":Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;
    new-instance v6, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;

    invoke-direct {v6, p0, v0}, Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;-><init>(Lcom/oneplus/gallery2/location/LocationManagerImpl;Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingHandle;)V

    .line 215
    .local v6, "task":Lcom/oneplus/gallery2/location/LocationManagerImpl$ReverseGeocodingTask;
    sget-object v1, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

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

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/location/LocationManagerImpl;->m_Executor:Ljava/util/concurrent/ExecutorService;

    .line 261
    :cond_0
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 282
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 290
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "flags"    # I

    .prologue
    .line 307
    sget v2, Lcom/oneplus/gallery2/media/Media;->FLAG_ADDRESS_CHANGED:I

    and-int/2addr v2, p3

    if-nez v2, :cond_1

    .line 316
    :cond_0
    return-void

    .line 311
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/location/LocationManagerImpl;->EXTRA_KEY_RELATED_ADDR_CLASSIFIERS:Lcom/oneplus/gallery2/ExtraKey;

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Lcom/oneplus/gallery2/media/Media;->getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 312
    .local v0, "classifiers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;>;"
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;

    invoke-virtual {v2, p2}, Lcom/oneplus/gallery2/location/LocationManagerImpl$AddressClassifierImpl;->updateMedia(Lcom/oneplus/gallery2/media/Media;)Z

    .line 314
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
