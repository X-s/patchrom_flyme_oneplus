.class public abstract Lcom/oneplus/gallery2/media/MediaStoreMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "MediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaStoreItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;,
        Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;,
        Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;
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

    const/16 v0, 0xf

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    .line 44
    aput-object v1, v0, v3

    const-string/jumbo v1, "media_type"

    .line 45
    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "_data"

    .line 46
    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_size"

    .line 47
    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mime_type"

    .line 48
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "date_modified"

    .line 49
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "datetaken"

    .line 50
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_added"

    .line 51
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "width"

    .line 52
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "height"

    .line 53
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "latitude"

    .line 54
    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "longitude"

    .line 55
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "orientation"

    .line 56
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "duration"

    .line 57
    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "parent"

    .line 58
    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    .line 66
    aput-object v1, v0, v3

    .line 65
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

    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "external"

    .line 85
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

    const/16 v0, 0x100

    .line 298
    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->INTERNAL_FLAG_SUB_MEDIA:I

    .line 299
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 4

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

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

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

.method static synthetic access$0(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 0

    .prologue
    .line 762
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 423
    invoke-static {}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getAddresses()V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static final create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 329
    :try_start_0
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    packed-switch v0, :pswitch_data_0

    .line 336
    :pswitch_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    .line 337
    invoke-static {v0}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-static {v0}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create() - Unknown media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-object v4

    .line 332
    :pswitch_1
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-object v0

    .line 334
    :pswitch_2
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 339
    iput v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 340
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-object v0

    :cond_1
    const/4 v0, 0x3

    .line 344
    iput v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 345
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 353
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "create() - Fail to create media for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    return-object v4

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
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 426
    sput-boolean v6, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsAddressObtainingScheduled:Z

    .line 427
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/location/LocationManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManager;

    .line 432
    if-eqz v0, :cond_2

    .line 439
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 440
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 442
    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 443
    if-eqz v4, :cond_0

    .line 444
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 428
    :cond_1
    return-void

    .line 434
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 435
    return-void

    .line 446
    :cond_3
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 447
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 453
    :cond_4
    :goto_1
    return-void

    .line 449
    :cond_5
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getAddresses() - Start obtaining addresses for "

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " media"

    invoke-static {v1, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddressCallback:Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;

    invoke-interface {v0, v2, v7, v1, v6}, Lcom/oneplus/gallery2/location/LocationManager;->getAddresses(Ljava/util/Map;Ljava/util/Locale;Lcom/oneplus/gallery2/location/LocationManager$AddressCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 451
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAddresses() - Fail to start obtaining addresses"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getId(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaStore/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeFromMediaStoreValue(I)Lcom/oneplus/gallery2/media/MediaType;
    .locals 1

    .prologue
    .line 620
    packed-switch p0, :pswitch_data_0

    .line 627
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0

    .line 623
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0

    .line 625
    :pswitch_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static final isValidId(Ljava/lang/String;Lcom/oneplus/base/Ref;)Z
    .locals 4
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
    const/4 v3, 0x0

    .line 707
    if-eqz p0, :cond_1

    const-string/jumbo v0, "MediaStore/"

    .line 709
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    :cond_0
    return v3

    .line 708
    :cond_1
    return v3

    .line 709
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "MediaStore/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 711
    if-nez p1, :cond_3

    const-string/jumbo v0, "MediaStore/"

    .line 724
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 726
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    const-string/jumbo v0, "MediaStore/"

    .line 715
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 716
    :catch_0
    move-exception v0

    .line 719
    return v3

    .line 727
    :cond_5
    return v3
.end method

.method private onAddressObtained(Landroid/location/Address;)V
    .locals 8

    .prologue
    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/4 v1, 0x0

    .line 738
    if-nez p1, :cond_1

    .line 739
    :cond_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v2, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 753
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 754
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 755
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 756
    invoke-virtual {v0, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V

    .line 757
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 758
    return-void

    .line 742
    :cond_3
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    .line 743
    return-void

    .line 745
    :cond_4
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_5

    .line 746
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    .line 748
    :cond_5
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    .line 749
    return-void

    :cond_6
    move v0, v1

    .line 745
    goto :goto_0
.end method

.method private static onAddressesObtained(Lcom/oneplus/base/Handle;Ljava/util/Locale;Ljava/util/Map;I)V
    .locals 3
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
    .line 764
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 766
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 767
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-direct {v1, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 769
    :cond_0
    return-void
.end method

.method static final parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 5
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
    const/4 v4, 0x0

    .line 998
    if-eqz p1, :cond_1

    .line 1000
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1003
    :cond_0
    return v4

    .line 999
    :cond_1
    return v4

    .line 1002
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    .line 1006
    if-nez p2, :cond_4

    .line 1019
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_5

    .line 1021
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_3
    return v4

    .line 1010
    :cond_4
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 1011
    :catch_0
    move-exception v0

    .line 1014
    return v4

    .line 1022
    :cond_6
    return v4
.end method

.method static final parseFileContentUri(Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z
    .locals 1
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
    .line 1037
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method private static scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V
    .locals 4

    .prologue
    .line 1073
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    sget-boolean v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsAddressObtainingScheduled:Z

    if-eqz v0, :cond_1

    .line 1080
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 1082
    :goto_0
    return-void

    .line 1074
    :cond_0
    return-void

    .line 1077
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsAddressObtainingScheduled:Z

    .line 1078
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GetAddressesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1081
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GetAddressesRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public addToAlbum(JI)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->canAddToAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 369
    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0

    .line 365
    :cond_0
    return v2

    .line 371
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addToAlbum() - No AlbumManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return v2
.end method

.method public canAddToAlbum()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected abstract createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
.end method

.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 400
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
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

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isBurstSubMedia()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 646
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFavoriteSupported()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 670
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public final isReleased()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 685
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isSubMedia()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 695
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->INTERNAL_FLAG_SUB_MEDIA:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    if-nez v0, :cond_1

    .line 783
    :goto_1
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto :goto_0

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 780
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 781
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 801
    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 804
    if-nez p2, :cond_6

    .line 853
    :cond_0
    :goto_0
    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->addedTime:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddedTime:J

    .line 856
    if-nez v3, :cond_e

    :cond_1
    const/4 v1, 0x0

    .line 857
    :goto_1
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_f

    const/4 v2, 0x0

    :goto_2
    if-ne v2, v1, :cond_10

    .line 866
    :goto_3
    if-nez v3, :cond_12

    :cond_2
    const/4 v1, 0x0

    .line 867
    :goto_4
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :goto_5
    if-ne v2, v1, :cond_14

    .line 877
    :goto_6
    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_16

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    .line 878
    :goto_7
    if-nez v1, :cond_17

    .line 891
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v1, :cond_1b

    move v1, v0

    :goto_8
    const/4 v0, 0x0

    .line 900
    if-nez v3, :cond_1c

    move-object v2, v0

    .line 917
    :goto_9
    if-nez v2, :cond_20

    .line 933
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_25

    .line 937
    :cond_3
    :goto_a
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    .line 940
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 942
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    .line 943
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    .line 944
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    or-int/2addr v1, v0

    .line 948
    :cond_4
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    const-wide/16 v4, 0x0

    .line 949
    cmp-long v0, v2, v4

    if-lez v0, :cond_26

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_5

    if-nez p2, :cond_27

    .line 953
    :cond_5
    :goto_c
    if-nez p3, :cond_28

    .line 964
    :goto_d
    return v1

    .line 807
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 808
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 838
    :cond_7
    :goto_e
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    iget-wide v6, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 840
    iget-wide v4, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    .line 841
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/2addr v0, v1

    .line 845
    :cond_8
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    iget-wide v6, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 847
    iget-wide v4, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    .line 848
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 811
    :cond_9
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevFilePath:Ljava/lang/String;

    .line 812
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    .line 813
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FILE_PATH_CHANGED:I

    or-int/lit8 v0, v0, 0x0

    .line 816
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 817
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 823
    :cond_a
    :goto_f
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 825
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    or-int/2addr v1, v0

    .line 826
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 833
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    move v0, v1

    goto :goto_e

    .line 818
    :cond_b
    if-eqz v3, :cond_a

    .line 819
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/32 v6, 0x20000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_a

    const/4 v2, 0x0

    .line 821
    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    goto :goto_f

    .line 828
    :cond_c
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 829
    if-eqz v3, :cond_d

    move v0, v1

    goto :goto_e

    .line 830
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/high16 v2, 0x20000

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    move v0, v1

    .line 831
    goto :goto_e

    .line 856
    :cond_e
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x1

    .line 857
    goto/16 :goto_2

    .line 859
    :cond_10
    if-nez v1, :cond_11

    .line 862
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_3

    .line 860
    :cond_11
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_3

    .line 866
    :cond_12
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x1

    .line 867
    goto/16 :goto_5

    .line 869
    :cond_14
    if-nez v1, :cond_15

    .line 872
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 873
    :goto_10
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FAVORITE_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_6

    .line 870
    :cond_15
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto :goto_10

    :cond_16
    const/4 v1, 0x0

    .line 877
    goto/16 :goto_7

    .line 880
    :cond_17
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v1, :cond_19

    .line 884
    :cond_18
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    .line 885
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 886
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 887
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iget-wide v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 888
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v0, v1

    move v1, v0

    .line 890
    goto/16 :goto_8

    .line 881
    :cond_19
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-wide v6, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1a

    const/4 v1, 0x1

    :goto_11
    if-nez v1, :cond_18

    .line 882
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-wide v6, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_18

    move v1, v0

    goto/16 :goto_8

    .line 881
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11

    .line 893
    :cond_1b
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    const/4 v1, 0x0

    .line 894
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 895
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_8

    .line 901
    :cond_1c
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object v2, v0

    goto/16 :goto_9

    .line 902
    :cond_1d
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object v2, v0

    goto/16 :goto_9

    .line 903
    :cond_1e
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    if-nez v2, :cond_1f

    move-object v2, v0

    goto/16 :goto_9

    .line 905
    :cond_1f
    new-instance v0, Landroid/location/Address;

    new-instance v2, Ljava/util/Locale;

    iget-object v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 906
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-virtual {v0, v4, v5}, Landroid/location/Address;->setLatitude(D)V

    .line 907
    iget-wide v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-virtual {v0, v4, v5}, Landroid/location/Address;->setLongitude(D)V

    .line 908
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 909
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 910
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 911
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 912
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 913
    iget-object v2, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 914
    iget-object v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 915
    iget-object v4, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_9

    .line 919
    :cond_20
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_22

    .line 924
    :cond_21
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 926
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    or-int/2addr v1, v0

    .line 927
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 928
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto/16 :goto_a

    .line 920
    :cond_22
    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v4, v6

    if-lez v0, :cond_23

    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_21

    .line 921
    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v4, v6

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_13
    if-nez v0, :cond_21

    .line 922
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v4, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 931
    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    goto/16 :goto_a

    .line 920
    :cond_23
    const/4 v0, 0x0

    goto :goto_12

    .line 921
    :cond_24
    const/4 v0, 0x0

    goto :goto_13

    .line 934
    :cond_25
    invoke-static {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto/16 :goto_a

    .line 949
    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 950
    :cond_27
    iget-wide v2, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto/16 :goto_c

    .line 955
    :cond_28
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_TakenTime:J

    goto/16 :goto_d
.end method

.method public openInputStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 985
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No source to open input stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 980
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "openInputStream() - fail"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 984
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method final release()V
    .locals 2

    .prologue
    .line 1044
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1045
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PendingAddressObtainingMedia:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1046
    return-void
.end method

.method public removeFromAlbum(JI)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->canAddToAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 1059
    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0

    .line 1055
    :cond_0
    return v2

    .line 1061
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeFromAlbum() - No AlbumManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    return v2
.end method

.method public setFavorite(Z)Z
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1089
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 1090
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isFavoriteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isFavorite()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1094
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 1095
    if-nez p1, :cond_2

    .line 1102
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1103
    invoke-virtual {v0, p0, v2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    .line 1105
    :goto_0
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FAVORITE_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1106
    return v3

    .line 1091
    :cond_0
    return v2

    .line 1093
    :cond_1
    return v3

    .line 1097
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1098
    invoke-virtual {v0, p0, v4, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final update(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)I
    .locals 1

    .prologue
    .line 1126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v0

    return v0
.end method
