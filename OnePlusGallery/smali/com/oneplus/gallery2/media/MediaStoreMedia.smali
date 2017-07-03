.class public abstract Lcom/oneplus/gallery2/media/MediaStoreMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "MediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaStoreItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;,
        Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;,
        Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_FILE:Landroid/net/Uri;

.field private static final CONTENT_URI_STRING_FILE:Ljava/lang/String;

.field private static final DURATION_GET_ADDRESSES_DELAY:J = 0x1f4L

.field public static final FLAG_GROUP_CHANGED:I

.field public static final FLAG_PARENT_ID_CHANGED:I

.field private static final ID_PREFIX:Ljava/lang/String; = "MediaStore/"

.field private static final INTERNAL_FLAG_BURST_SUB_MEDIA:I = 0x100

.field private static final INTERNAL_FLAG_CAPTURED_BY_FRONT_CAM:I = 0x4

.field private static final INTERNAL_FLAG_FAVORITE:I = 0x1

.field private static final INTERNAL_FLAG_RELEASED:I = 0x40000000

.field private static final INTERNAL_FLAG_SUB_MEDIA:I

.field private static final INTERNAL_FLAG_TEMPORARY:I = 0x2

.field private static final MAX_PENDING_ADDRESS_OBTAINING_MEDIA:I = 0x40

.field static final MEDIA_STORE_COLUMNS:[Ljava/lang/String;

.field static final MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final m_AddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

.field private static final m_GetAddressesRunnable:Ljava/lang/Runnable;

.field private static m_IsAddressObtainingScheduled:Z

.field private static final m_PendingAddressObtainingMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/MediaStoreMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_AddedTime:J

.field private m_Address:Landroid/location/Address;

.field private final m_ContentUri:Landroid/net/Uri;

.field private m_FilePath:Ljava/lang/String;

.field private m_FileSize:J

.field private m_GroupId:Ljava/lang/String;

.field private final m_Id:Ljava/lang/String;

.field private volatile m_InternalFlags:I

.field private m_LastModifiedTime:J

.field private m_Location:Landroid/location/Location;

.field private final m_MediaId:J

.field private m_MimeType:Ljava/lang/String;

.field private m_ParentId:J

.field private m_PrevAddress:Landroid/location/Address;

.field private m_PrevFilePath:Ljava/lang/String;

.field private m_PrevLocation:Landroid/location/Location;

.field private m_PrevParentId:J

.field private m_PrevTakenTime:J

.field private m_TakenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "media_type"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    .line 77
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    .line 81
    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    .line 85
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 86
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$1;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    .line 104
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$2;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia$2;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GetAddressesRunnable:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    .line 298
    const/16 v0, 0x100

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->INTERNAL_FLAG_SUB_MEDIA:I

    .line 299
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p2, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p3, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .prologue
    const-wide/16 v2, -0x1

    .line 310
    iget v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getTypeFromMediaStoreValue(I)Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 129
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    .line 133
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    .line 311
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Id:Ljava/lang/String;

    .line 312
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MediaId:J

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/base/Handle;
    .param p1, "x1"    # Ljava/util/Locale;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getAddresses()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static final create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .locals 6
    .param p0, "source"    # Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p2, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .prologue
    const/4 v3, 0x0

    .line 329
    :try_start_0
    iget v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    packed-switch v2, :pswitch_data_0

    .line 336
    :pswitch_0
    iget-object v1, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    .line 337
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x1

    iput v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 340
    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    .line 354
    .end local v1    # "filePath":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 332
    :pswitch_1
    new-instance v2, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create() - Fail to create media for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 354
    goto :goto_0

    .line 334
    .end local v0    # "ex":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_1
    new-instance v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    goto :goto_0

    .line 342
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    const/4 v2, 0x3

    iput v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 345
    new-instance v2, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    goto :goto_0

    .line 347
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create() - Unknown media type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 348
    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getAddresses()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 426
    sput-boolean v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsAddressObtainingScheduled:Z

    .line 427
    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 453
    .local v2, "locationManager":Lcom/oneplus/gallery2/location/LocationManager;
    :cond_0
    :goto_0
    return-void

    .line 431
    .end local v2    # "locationManager":Lcom/oneplus/gallery2/location/LocationManager;
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    const-class v6, Lcom/oneplus/gallery2/location/LocationManager;

    invoke-virtual {v5, v6}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/location/LocationManager;

    .line 432
    .restart local v2    # "locationManager":Lcom/oneplus/gallery2/location/LocationManager;
    if-nez v2, :cond_2

    .line 434
    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 439
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 440
    .local v3, "locations":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Location;>;"
    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 442
    .local v4, "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    invoke-virtual {v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 443
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_3

    .line 444
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 446
    .end local v1    # "location":Landroid/location/Location;
    .end local v4    # "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    :cond_4
    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 447
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 449
    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v6, "getAddresses() - Start obtaining addresses for "

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, " media"

    invoke-static {v5, v6, v7, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    const/4 v5, 0x0

    sget-object v6, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    invoke-interface {v2, v3, v5, v6, v9}, Lcom/oneplus/gallery2/location/LocationManager;->getAddresses(Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 451
    sget-object v5, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v6, "getAddresses() - Fail to start obtaining addresses"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getId(J)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaStore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeFromMediaStoreValue(I)Lcom/oneplus/gallery2/media/MediaType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 620
    packed-switch p0, :pswitch_data_0

    .line 627
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    :goto_0
    return-object v0

    .line 623
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    goto :goto_0

    .line 625
    :pswitch_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static final isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "mediaId":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 691
    if-nez p0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v3

    .line 693
    :cond_1
    const-string v4, "MediaStore/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "MediaStore/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 695
    if-eqz p1, :cond_3

    .line 699
    :try_start_0
    const-string v4, "MediaStore/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 703
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 708
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    const-string v4, "MediaStore/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 710
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onAddressObtained(Landroid/location/Address;)V
    .locals 8
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 722
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 726
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto :goto_0

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_3

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-lez v1, :cond_4

    .line 732
    :cond_3
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto :goto_0

    .line 737
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 738
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 739
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 740
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    invoke-virtual {v0, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V

    .line 741
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method private static onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 4
    .param p0, "handle"    # Lcom/oneplus/base/Handle;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p3, "flags"    # I
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
    .line 748
    .local p2, "addresses":Ljava/util/Map;, "Ljava/util/Map<*Landroid/location/Address;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 750
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Landroid/location/Address;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 751
    .local v2, "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-direct {v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 753
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Landroid/location/Address;>;"
    .end local v2    # "media":Lcom/oneplus/gallery2/media/MediaStoreMedia;
    :cond_0
    return-void
.end method

.method static final parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 8
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "mediaIdRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 982
    if-nez p1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return v5

    .line 984
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, "uriString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "baseUriString":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 988
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_0

    .line 990
    if-eqz p2, :cond_3

    .line 994
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 996
    :catch_0
    move-exception v1

    .line 998
    .local v1, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 1003
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "i":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1005
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1003
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static final parseFileContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 1
    .param p0, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, "mediaIdRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Ljava/lang/Long;>;"
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method private static scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V
    .locals 4
    .param p0, "media"    # Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .prologue
    .line 1057
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    sget-boolean v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsAddressObtainingScheduled:Z

    if-nez v0, :cond_2

    .line 1061
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsAddressObtainingScheduled:Z

    .line 1062
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GetAddressesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1064
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 1065
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GetAddressesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public addToAlbum(JI)Z
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->canAddToAlbum()Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    :goto_0
    return v1

    .line 368
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 369
    .local v0, "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    if-nez v0, :cond_1

    .line 371
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v3, "addToAlbum() - No AlbumManager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    goto :goto_0
.end method

.method public canAddToAlbum()Z
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
.end method

.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/gallery2/media/Media$DeletionCallback;
    .param p2, "flags"    # I

    .prologue
    .line 400
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    goto :goto_0
.end method

.method public getAddedTime()J
    .locals 2

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddedTime:J

    return-wide v0
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 1

    .prologue
    .line 460
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    return-wide v0
.end method

.method final getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method public final getMediaId()J
    .locals 2

    .prologue
    .line 539
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MediaId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()J
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    return-wide v0
.end method

.method public getPreviousAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    return-object v0
.end method

.method public getPreviousFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getPreviousParentId()J
    .locals 2

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    return-wide v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 601
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevTakenTime:J

    return-wide v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_TakenTime:J

    return-wide v0
.end method

.method final isBurstSubMedia()Z
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavoriteSupported()Z
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isReleased()Z
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubMedia()Z
    .locals 2

    .prologue
    .line 679
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->INTERNAL_FLAG_SUB_MEDIA:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 765
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 767
    :cond_0
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    .line 769
    :cond_1
    return-void
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 16
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p2, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
    .param p3, "fromConstructor"    # Z

    .prologue
    .line 782
    const/4 v4, 0x0

    .line 785
    .local v4, "flags":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 788
    .local v3, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-eqz p2, :cond_3

    .line 791
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 792
    .local v8, "oldGroupId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevFilePath:Ljava/lang/String;

    .line 796
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    .line 797
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FILE_PATH_CHANGED:I

    or-int/2addr v4, v9

    .line 800
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-static {v9}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 801
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/32 v14, 0x20000

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_0

    .line 805
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 807
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 809
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    or-int/2addr v4, v9

    .line 810
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 812
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit16 v9, v9, 0x100

    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 813
    if-nez v3, :cond_1

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/high16 v12, 0x20000

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v12, v13}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    .line 822
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J

    cmp-long v9, v12, v14

    if-eqz v9, :cond_2

    .line 824
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    .line 825
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/2addr v4, v9

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    cmp-long v9, v12, v14

    if-eqz v9, :cond_3

    .line 831
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    .line 832
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v4, v9

    .line 837
    .end local v8    # "oldGroupId":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->addedTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddedTime:J

    .line 840
    if-eqz v3, :cond_f

    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-eqz v9, :cond_f

    const/4 v6, 0x1

    .line 841
    .local v6, "isCaptureByFrontCamera":Z
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    :goto_2
    if-eq v9, v6, :cond_4

    .line 843
    if-eqz v6, :cond_11

    .line 844
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v9, v9, 0x4

    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 850
    :cond_4
    :goto_3
    if-eqz v3, :cond_12

    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v14, 0x10

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-eqz v9, :cond_12

    const/4 v7, 0x1

    .line 851
    .local v7, "isFavorite":Z
    :goto_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    :goto_5
    if-eq v9, v7, :cond_5

    .line 853
    if-eqz v7, :cond_14

    .line 854
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 857
    :goto_6
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FAVORITE_CHANGED:I

    or-int/2addr v4, v9

    .line 861
    :cond_5
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    const-wide/16 v14, 0x0

    cmpl-double v9, v12, v14

    if-eqz v9, :cond_15

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    const-wide/16 v14, 0x0

    cmpl-double v9, v12, v14

    if-eqz v9, :cond_15

    const/4 v5, 0x1

    .line 862
    .local v5, "hasLocation":Z
    :goto_7
    if-eqz v5, :cond_16

    .line 864
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v9, v12, v14

    if-gtz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v9, v12, v14

    if-lez v9, :cond_7

    .line 868
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    .line 869
    new-instance v9, Landroid/location/Location;

    const-string v12, ""

    invoke-direct {v9, v12}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 870
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    invoke-virtual {v9, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    .line 871
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    invoke-virtual {v9, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    .line 872
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v4, v9

    .line 883
    :cond_7
    :goto_8
    const/4 v2, 0x0

    .line 884
    .local v2, "address":Landroid/location/Address;
    if-eqz v3, :cond_8

    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_8

    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 889
    new-instance v2, Landroid/location/Address;

    .end local v2    # "address":Landroid/location/Address;
    new-instance v9, Ljava/util/Locale;

    iget-object v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 890
    .restart local v2    # "address":Landroid/location/Address;
    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-virtual {v2, v12, v13}, Landroid/location/Address;->setLatitude(D)V

    .line 891
    iget-wide v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-virtual {v2, v12, v13}, Landroid/location/Address;->setLongitude(D)V

    .line 892
    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 893
    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 894
    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 895
    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 896
    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 897
    iget-object v9, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 898
    const/4 v9, 0x0

    iget-object v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 899
    const/4 v9, 0x1

    iget-object v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 901
    :cond_8
    if-eqz v2, :cond_18

    .line 903
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v9, v12, v14

    if-gtz v9, :cond_9

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v9, v12, v14

    if-gtz v9, :cond_9

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v9

    sget-object v12, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v9, v12}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 908
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 909
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 910
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    or-int/2addr v4, v9

    .line 911
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v9, :cond_a

    .line 912
    invoke-static/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    .line 921
    :cond_a
    :goto_9
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    .line 924
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    cmp-long v9, v12, v14

    if-eqz v9, :cond_b

    .line 926
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    .line 927
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    .line 928
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    or-int/2addr v4, v9

    .line 932
    :cond_b
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    .line 933
    .local v10, "takenTime":J
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_c

    if-eqz p2, :cond_c

    .line 934
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    .line 937
    :cond_c
    if-eqz p3, :cond_d

    .line 939
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_TakenTime:J

    .line 948
    :cond_d
    return v4

    .line 817
    .end local v2    # "address":Landroid/location/Address;
    .end local v5    # "hasLocation":Z
    .end local v6    # "isCaptureByFrontCamera":Z
    .end local v7    # "isFavorite":Z
    .end local v10    # "takenTime":J
    .restart local v8    # "oldGroupId":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit16 v9, v9, -0x101

    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_0

    .line 840
    .end local v8    # "oldGroupId":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 841
    .restart local v6    # "isCaptureByFrontCamera":Z
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 846
    :cond_11
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v9, v9, -0x5

    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_3

    .line 850
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 851
    .restart local v7    # "isFavorite":Z
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 856
    :cond_14
    move-object/from16 v0, p0

    iget v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v9, v9, -0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_6

    .line 861
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 875
    .restart local v5    # "hasLocation":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v9, :cond_7

    .line 877
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    .line 878
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 879
    sget v9, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v4, v9

    goto/16 :goto_8

    .line 915
    .restart local v2    # "address":Landroid/location/Address;
    :cond_17
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    goto/16 :goto_9

    .line 917
    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v9, :cond_a

    .line 918
    invoke-static/range {p0 .. p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto/16 :goto_9
.end method

.method public openInputStream(I)Ljava/io/InputStream;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 960
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 968
    :goto_0
    return-object v1

    .line 962
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v2, "openInputStream() - fail"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 967
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 968
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No source to open input stream"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final release()V
    .locals 2

    .prologue
    .line 1028
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1029
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1030
    return-void
.end method

.method public removeFromAlbum(JI)Z
    .locals 5
    .param p1, "albumId"    # J
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1038
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->canAddToAlbum()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1050
    :goto_0
    return v1

    .line 1042
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 1043
    .local v0, "albumManager":Lcom/oneplus/gallery2/media/AlbumManager;
    if-nez v0, :cond_1

    .line 1045
    sget-object v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v3, "removeFromAlbum() - No AlbumManager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_1
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    goto :goto_0
.end method

.method public setFavorite(Z)Z
    .locals 5
    .param p1, "favorite"    # Z

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1073
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 1074
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isFavoriteSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1090
    :goto_0
    return v1

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isFavorite()Z

    move-result v3

    if-ne v3, p1, :cond_1

    move v1, v2

    .line 1077
    goto :goto_0

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 1079
    .local v0, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    if-eqz p1, :cond_2

    .line 1081
    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1082
    invoke-virtual {v0, p0, v4, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    .line 1089
    :goto_1
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FAVORITE_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    move v1, v2

    .line 1090
    goto :goto_0

    .line 1086
    :cond_2
    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1087
    invoke-virtual {v0, p0, v1, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I
    .locals 1
    .param p1, "values"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;
    .param p2, "fileInfo"    # Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v0

    return v0
.end method
