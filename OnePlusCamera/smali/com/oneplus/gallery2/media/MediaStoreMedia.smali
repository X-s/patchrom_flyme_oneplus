.class public abstract Lcom/oneplus/gallery2/media/MediaStoreMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "MediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaStoreItem;
.implements Lcom/oneplus/gallery2/media/ContentAwareMedia;


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

.field public static final FLAG_GROUP_CHANGED:I

.field public static final FLAG_PARENT_ID_CHANGED:I

.field private static final ID_PREFIX:Ljava/lang/String; = "MediaStore/"

.field private static final INTERNAL_FLAG_BURST_SUB_MEDIA:I = 0x100

.field private static final INTERNAL_FLAG_CAPTURED_BY_FRONT_CAM:I = 0x4

.field private static final INTERNAL_FLAG_FAVORITE:I = 0x1

.field private static final INTERNAL_FLAG_HIDDEN:I = 0x8

.field private static final INTERNAL_FLAG_RAW:I = 0x16

.field private static final INTERNAL_FLAG_RAW_SUB_MEDIA:I = 0x200

.field private static final INTERNAL_FLAG_RELEASED:I = 0x40000000

.field private static final INTERNAL_FLAG_SUB_MEDIA:I

.field private static final INTERNAL_FLAG_TEMPORARY:I = 0x2

.field static final MEDIA_STORE_COLUMNS:[Ljava/lang/String;

.field static final MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_AddedTime:J

.field private m_Address:Landroid/location/Address;

.field private m_ContentObjectTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/contentdetection/ObjectType;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContentScenes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/content/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ContentUri:Landroid/net/Uri;

.field private m_DisplayName:Ljava/lang/String;

.field private m_FilePath:Ljava/lang/String;

.field private m_FileSize:J

.field private m_GroupId:Ljava/lang/String;

.field private final m_Id:Ljava/lang/String;

.field private volatile m_InternalFlags:I

.field private m_IsParentVisible:Z

.field private m_LastModifiedTime:J

.field private m_Location:Landroid/location/Location;

.field private final m_MediaId:J

.field private m_MimeType:Ljava/lang/String;

.field private m_ObjectDetectionFileTime:J

.field private m_ObjectDetectionVersion:J

.field private m_ParentId:J

.field private m_PrevAddress:Landroid/location/Address;

.field private m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

.field private m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

.field private m_PrevFilePath:Ljava/lang/String;

.field private m_PrevLocation:Landroid/location/Location;

.field private m_PrevParentId:J

.field private m_PrevTakenTime:J

.field private m_SceneDetectionFileTime:J

.field private m_SceneDetectionVersion:J

.field private m_TakenTime:J

.field private m_Title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x11

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    .line 48
    aput-object v1, v0, v3

    const-string/jumbo v1, "media_type"

    .line 49
    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "_data"

    .line 50
    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_size"

    .line 51
    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mime_type"

    .line 52
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "date_modified"

    .line 53
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "datetaken"

    .line 54
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_added"

    .line 55
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "width"

    .line 56
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "height"

    .line 57
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "latitude"

    .line 58
    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "longitude"

    .line 59
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "orientation"

    .line 60
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "duration"

    .line 61
    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "parent"

    .line 62
    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "_display_name"

    .line 63
    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "title"

    .line 64
    aput-object v2, v0, v1

    .line 47
    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    .line 72
    aput-object v1, v0, v3

    .line 71
    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->MEDIA_STORE_COLUMNS_ID:[Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    .line 83
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    const-class v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "external"

    .line 89
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    .line 90
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_STRING_FILE:Ljava/lang/String;

    const/16 v0, 0x100

    .line 299
    sput v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->INTERNAL_FLAG_SUB_MEDIA:I

    .line 300
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 311
    iget v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getTypeFromMediaStoreValue(I)Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 114
    iput-boolean v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsParentVisible:Z

    .line 121
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    .line 127
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    .line 312
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getId(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Id:Ljava/lang/String;

    .line 313
    iget-wide v0, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->id:J

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MediaId:J

    .line 314
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

    .line 315
    invoke-virtual {p0, p2, p3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    .line 316
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static final create(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)Lcom/oneplus/gallery2/media/MediaStoreMedia;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 330
    :try_start_0
    iget v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    .line 338
    invoke-static {v0}, Lcom/oneplus/io/FileUtils;->isImageFilePath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-static {v0}, Lcom/oneplus/io/FileUtils;->isVideoFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
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

    .line 349
    return-object v4

    .line 333
    :pswitch_1
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-object v0

    .line 335
    :pswitch_2
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 340
    iput v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 341
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V

    return-object v0

    :cond_1
    const/4 v0, 0x3

    .line 345
    iput v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mediaType:I

    .line 346
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMediaStoreMedia;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 354
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

    .line 355
    return-object v4

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getId(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 538
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
    .line 731
    packed-switch p0, :pswitch_data_0

    .line 738
    :pswitch_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0

    .line 734
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0

    .line 736
    :pswitch_2
    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0

    .line 731
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

    .line 833
    if-eqz p0, :cond_1

    const-string/jumbo v0, "MediaStore/"

    .line 835
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 836
    :cond_0
    return v3

    .line 834
    :cond_1
    return v3

    .line 835
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "MediaStore/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 837
    if-nez p1, :cond_3

    const-string/jumbo v0, "MediaStore/"

    .line 850
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 852
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    const-string/jumbo v0, "MediaStore/"

    .line 841
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

    .line 856
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 842
    :catch_0
    move-exception v0

    .line 845
    return v3

    .line 853
    :cond_5
    return v3
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

    .line 1217
    if-eqz p1, :cond_1

    .line 1219
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1222
    :cond_0
    return v4

    .line 1218
    :cond_1
    return v4

    .line 1221
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    .line 1225
    if-nez p2, :cond_4

    .line 1238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_5

    .line 1240
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_3
    return v4

    .line 1229
    :cond_4
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 1230
    :catch_0
    move-exception v0

    .line 1233
    return v4

    .line 1241
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
    .line 1256
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->CONTENT_URI_FILE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->parseContentUri(Landroid/net/Uri;Landroid/net/Uri;Lcom/oneplus/base/Ref;)Z

    move-result v0

    return v0
.end method

.method private updateObjectDetectionResult(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1388
    if-eqz p2, :cond_3

    .line 1391
    :cond_0
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

    .line 1395
    :goto_0
    if-nez p1, :cond_4

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

    if-nez v0, :cond_10

    .line 1445
    :cond_2
    :goto_1
    return v2

    .line 1388
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oneplus/gallery2/contentdetection/ObjectType;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/contentdetection/ObjectType;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

    goto :goto_0

    .line 1395
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    if-nez p2, :cond_6

    .line 1410
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    if-nez v0, :cond_8

    .line 1429
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    move v0, v2

    .line 1430
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move v1, v0

    :goto_3
    if-ltz v2, :cond_f

    .line 1432
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;

    iget v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    invoke-static {v0}, Lcom/oneplus/gallery2/contentdetection/ObjectType;->fromId(I)Lcom/oneplus/gallery2/contentdetection/ObjectType;

    move-result-object v0

    .line 1433
    if-nez v0, :cond_e

    :cond_5
    move v0, v1

    .line 1430
    :goto_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 1399
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    .line 1400
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_2

    .line 1402
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;

    iget v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;->objectTypeId:I

    invoke-static {v0}, Lcom/oneplus/gallery2/contentdetection/ObjectType;->fromId(I)Lcom/oneplus/gallery2/contentdetection/ObjectType;

    move-result-object v0

    .line 1403
    if-nez v0, :cond_7

    .line 1400
    :goto_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    .line 1404
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1412
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/contentdetection/ObjectType;

    .line 1414
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1416
    if-eqz v1, :cond_a

    .line 1418
    :goto_8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1417
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    .line 1421
    :cond_b
    if-nez v1, :cond_c

    move v0, v2

    goto :goto_2

    .line 1423
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_d

    .line 1424
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    move v0, v3

    .line 1427
    goto/16 :goto_2

    .line 1433
    :cond_e
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 1434
    goto :goto_4

    :cond_f
    move v2, v1

    .line 1437
    goto/16 :goto_1

    .line 1440
    :cond_10
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    move v2, v3

    .line 1441
    goto/16 :goto_1
.end method

.method private updateSceneDetectionResult(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1480
    if-eqz p2, :cond_3

    .line 1483
    :cond_0
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

    .line 1487
    :goto_0
    if-nez p1, :cond_4

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

    if-nez v0, :cond_10

    .line 1537
    :cond_2
    :goto_1
    return v2

    .line 1480
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oneplus/gallery2/media/content/Scene;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/media/content/Scene;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

    goto :goto_0

    .line 1487
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1489
    if-nez p2, :cond_6

    .line 1502
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    if-nez v0, :cond_8

    .line 1521
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    move v0, v2

    .line 1522
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move v1, v0

    :goto_3
    if-ltz v2, :cond_f

    .line 1524
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;

    iget v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    invoke-static {v0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->create(I)Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    move-result-object v0

    .line 1525
    if-nez v0, :cond_e

    :cond_5
    move v0, v1

    .line 1522
    :goto_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 1491
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    .line 1492
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_2

    .line 1494
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;

    iget v0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    invoke-static {v0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->create(I)Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    move-result-object v0

    .line 1495
    if-nez v0, :cond_7

    .line 1492
    :goto_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    .line 1496
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1504
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/content/Scene;

    .line 1506
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1508
    if-eqz v1, :cond_a

    .line 1510
    :goto_8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1509
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    .line 1513
    :cond_b
    if-nez v1, :cond_c

    move v0, v2

    goto :goto_2

    .line 1515
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_d

    .line 1516
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    move v0, v3

    .line 1519
    goto/16 :goto_2

    .line 1525
    :cond_e
    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 1526
    goto :goto_4

    :cond_f
    move v2, v1

    .line 1529
    goto/16 :goto_1

    .line 1532
    :cond_10
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    move v2, v3

    .line 1533
    goto/16 :goto_1
.end method


# virtual methods
.method public addToAlbum(JI)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->canAddToAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 370
    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->addMediaToAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0

    .line 366
    :cond_0
    return v2

    .line 372
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addToAlbum() - No AlbumManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return v2
.end method

.method public canAddToAlbum()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsObject(Lcom/oneplus/gallery2/contentdetection/ObjectType;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public containsScene(Lcom/oneplus/gallery2/media/content/Scene;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createContentUri(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;)Landroid/net/Uri;
.end method

.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 417
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_MOVE_TO_RECYCE_BIN:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->recycleMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0

    .line 418
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
    .line 427
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddedTime:J

    return-wide v0
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia$CacheKey;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    return-object v0
.end method

.method public getContentObjectTypes(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/contentdetection/ObjectType;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 452
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 458
    return v1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentObjectTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/contentdetection/ObjectType;

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentSceneCount()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 477
    return v0
.end method

.method public getContentScenes(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/content/Scene;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 487
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 493
    return v1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentScenes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/content/Scene;

    .line 490
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_DisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    return-wide v0
.end method

.method final getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    return-object v0
.end method

.method public final getMediaId()J
    .locals 2

    .prologue
    .line 572
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MediaId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectDetectionFileTime()J
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionFileTime:J

    return-wide v0
.end method

.method public final getObjectDetectionVersion()J
    .locals 2

    .prologue
    .line 600
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionVersion:J

    return-wide v0
.end method

.method public final getParentId()J
    .locals 2

    .prologue
    .line 611
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    return-wide v0
.end method

.method public getPreviousAddress()Landroid/location/Address;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    return-object v0
.end method

.method public getPreviousContentObjectTypes(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/contentdetection/ObjectType;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 644
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

    if-nez v0, :cond_0

    .line 650
    return v1

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 647
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentObjectTypes:[Lcom/oneplus/gallery2/contentdetection/ObjectType;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreviousContentScenes(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/content/Scene;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 659
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

    if-nez v0, :cond_0

    .line 665
    return v1

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 662
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevContentScenes:[Lcom/oneplus/gallery2/media/content/Scene;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 663
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreviousFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final getPreviousParentId()J
    .locals 2

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    return-wide v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 684
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevTakenTime:J

    return-wide v0
.end method

.method public final getSceneDetectionFileTime()J
    .locals 2

    .prologue
    .line 694
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionFileTime:J

    return-wide v0
.end method

.method public final getSceneDetectionVersion()J
    .locals 2

    .prologue
    .line 704
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionVersion:J

    return-wide v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 712
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_TakenTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Title:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 747
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

    .line 757
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

    .line 765
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

    .line 773
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

    .line 781
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isParentVisible()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsParentVisible:Z

    return v0
.end method

.method public isRaw()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 796
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x16

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public final isReleased()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 811
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

    .line 821
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->INTERNAL_FLAG_SUB_MEDIA:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVisibilityChangeSupported()Z
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 864
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsParentVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public notifyParentVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 882
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsParentVisible:Z

    if-eq v0, p1, :cond_0

    .line 885
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_IsParentVisible:Z

    .line 888
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 893
    :goto_0
    return-void

    .line 883
    :cond_0
    return-void

    .line 890
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 891
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_VISIBILITY_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method

.method final onAddressObtained(Landroid/location/Address;)V
    .locals 8

    .prologue
    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/4 v1, 0x0

    .line 900
    if-nez p1, :cond_1

    .line 901
    :cond_0
    return-void

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v2, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-virtual {p1}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 909
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_6

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 918
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 919
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 920
    invoke-virtual {v0, p0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateAddress(Lcom/oneplus/gallery2/media/MediaStoreMedia;Landroid/location/Address;)V

    .line 921
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 922
    return-void

    .line 904
    :cond_3
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v3

    if-nez v3, :cond_5

    .line 906
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    .line 907
    return-void

    .line 904
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 909
    :cond_6
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_7

    .line 910
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

    .line 912
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    .line 913
    return-void

    :cond_8
    move v0, v1

    .line 909
    goto :goto_1
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 928
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    if-nez v0, :cond_1

    .line 936
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto :goto_0

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    .line 933
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 934
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_1
.end method

.method onNetworkConnectionStateChanged(Z)V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    if-nez v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto :goto_0
.end method

.method protected onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 962
    iget-object v4, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 965
    if-nez p2, :cond_9

    .line 1014
    :cond_0
    :goto_0
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->addedTime:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_AddedTime:J

    .line 1017
    if-nez v4, :cond_11

    :cond_1
    const/4 v1, 0x0

    .line 1018
    :goto_1
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_2
    if-ne v2, v1, :cond_13

    .line 1027
    :goto_3
    if-nez v4, :cond_15

    :cond_2
    const/4 v1, 0x0

    .line 1028
    :goto_4
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_16

    const/4 v2, 0x0

    :goto_5
    if-ne v2, v1, :cond_17

    .line 1038
    :goto_6
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_19

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    .line 1039
    :goto_7
    if-nez v1, :cond_1a

    .line 1052
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v1, :cond_1e

    move v1, v0

    :goto_8
    const/4 v0, 0x0

    .line 1061
    if-nez v4, :cond_1f

    move-object v2, v0

    .line 1078
    :goto_9
    if-nez v2, :cond_23

    .line 1094
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_28

    .line 1098
    :cond_3
    :goto_a
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_MimeType:Ljava/lang/String;

    .line 1101
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    iget-wide v6, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 1103
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevParentId:J

    .line 1104
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->parentId:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ParentId:J

    .line 1105
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_PARENT_ID_CHANGED:I

    or-int/2addr v1, v0

    .line 1109
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_DisplayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->displayName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1116
    :goto_b
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Title:Ljava/lang/String;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1123
    :goto_c
    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->takenTime:J

    const-wide/16 v6, 0x0

    .line 1124
    cmp-long v0, v2, v6

    if-lez v0, :cond_2b

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_5

    if-nez p2, :cond_2c

    :cond_5
    :goto_e
    const-wide/16 v6, 0x3e8

    .line 1126
    div-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    .line 1129
    if-nez p3, :cond_2d

    .line 1140
    :goto_f
    if-nez v4, :cond_2e

    :cond_6
    const/4 v0, 0x0

    .line 1141
    :goto_10
    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    :goto_11
    if-ne v2, v0, :cond_30

    move v0, v1

    .line 1151
    :goto_12
    if-nez v4, :cond_32

    const-wide/16 v2, 0x0

    .line 1160
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionVersion:J

    const-wide/16 v2, 0x0

    .line 1161
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionFileTime:J

    const/4 v1, 0x0

    .line 1162
    invoke-direct {p0, v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->updateObjectDetectionResult(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1167
    :cond_7
    :goto_13
    if-nez v4, :cond_34

    const-wide/16 v2, 0x0

    .line 1176
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionVersion:J

    const-wide/16 v2, 0x0

    .line 1177
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionFileTime:J

    const/4 v1, 0x0

    .line 1178
    invoke-direct {p0, v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->updateSceneDetectionResult(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_35

    .line 1183
    :cond_8
    :goto_14
    return v0

    .line 968
    :cond_9
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 969
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 999
    :cond_a
    :goto_15
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    iget-wide v6, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_b

    .line 1001
    iget-wide v2, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->size:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FileSize:J

    .line 1002
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/2addr v0, v1

    .line 1006
    :cond_b
    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    iget-wide v6, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 1008
    iget-wide v2, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->lastModifiedTime:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_LastModifiedTime:J

    .line 1009
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 972
    :cond_c
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevFilePath:Ljava/lang/String;

    .line 973
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    .line 974
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FILE_PATH_CHANGED:I

    or-int/lit8 v0, v0, 0x0

    .line 977
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/gallery2/media/BurstMediaStoreMedia;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    .line 978
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 984
    :cond_d
    :goto_16
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 986
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_GROUP_CHANGED:I

    or-int/2addr v1, v0

    .line 987
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 994
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    move v0, v1

    goto :goto_15

    .line 979
    :cond_e
    if-eqz v4, :cond_d

    .line 980
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/32 v6, 0x20000

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_d

    const/4 v2, 0x0

    .line 982
    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_GroupId:Ljava/lang/String;

    goto :goto_16

    .line 989
    :cond_f
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 990
    if-eqz v4, :cond_10

    move v0, v1

    goto :goto_15

    .line 991
    :cond_10
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    move v0, v1

    .line 992
    goto :goto_15

    .line 1017
    :cond_11
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_12
    const/4 v2, 0x1

    .line 1018
    goto/16 :goto_2

    .line 1020
    :cond_13
    if-nez v1, :cond_14

    .line 1023
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_3

    .line 1021
    :cond_14
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto/16 :goto_3

    .line 1027
    :cond_15
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x10

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_16
    const/4 v2, 0x1

    .line 1028
    goto/16 :goto_5

    .line 1030
    :cond_17
    if-nez v1, :cond_18

    .line 1033
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1034
    :goto_17
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FAVORITE_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_6

    .line 1031
    :cond_18
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto :goto_17

    :cond_19
    const/4 v1, 0x0

    .line 1038
    goto/16 :goto_7

    .line 1041
    :cond_1a
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v1, :cond_1c

    .line 1045
    :cond_1b
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    .line 1046
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 1047
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1048
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1049
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v0, v1

    move v1, v0

    .line 1051
    goto/16 :goto_8

    .line 1042
    :cond_1c
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-wide v6, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->latitude:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1d

    const/4 v1, 0x1

    :goto_18
    if-nez v1, :cond_1b

    .line 1043
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-wide v6, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->longitude:D

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v1, v2, v6

    if-gtz v1, :cond_1b

    move v1, v0

    goto/16 :goto_8

    .line 1042
    :cond_1d
    const/4 v1, 0x0

    goto :goto_18

    .line 1054
    :cond_1e
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevLocation:Landroid/location/Location;

    const/4 v1, 0x0

    .line 1055
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    .line 1056
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_LOCATION_CHANGED:I

    or-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_8

    .line 1062
    :cond_1f
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v2, v0

    goto/16 :goto_9

    .line 1063
    :cond_20
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object v2, v0

    goto/16 :goto_9

    .line 1064
    :cond_21
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    if-nez v2, :cond_22

    move-object v2, v0

    goto/16 :goto_9

    .line 1066
    :cond_22
    new-instance v0, Landroid/location/Address;

    new-instance v2, Ljava/util/Locale;

    iget-object v3, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 1067
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLatitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 1068
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLongitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 1069
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressCountry:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 1070
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 1071
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 1072
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 1073
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressSubLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    .line 1074
    iget-object v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressFeature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1075
    iget-object v3, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine0:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 1076
    iget-object v3, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressAddressLine1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_9

    .line 1080
    :cond_23
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-nez v0, :cond_25

    .line 1085
    :cond_24
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_PrevAddress:Landroid/location/Address;

    const/4 v0, 0x0

    .line 1086
    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    .line 1087
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_ADDRESS_CHANGED:I

    or-int/2addr v1, v0

    .line 1088
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 1089
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto/16 :goto_a

    .line 1081
    :cond_25
    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_26

    const/4 v0, 0x1

    :goto_19
    if-nez v0, :cond_24

    .line 1082
    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_27

    const/4 v0, 0x1

    :goto_1a
    if-nez v0, :cond_24

    .line 1083
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    sget-object v3, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/base/BaseApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->addressLocale:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1092
    iput-object v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Address:Landroid/location/Address;

    goto/16 :goto_a

    .line 1081
    :cond_26
    const/4 v0, 0x0

    goto :goto_19

    .line 1082
    :cond_27
    const/4 v0, 0x0

    goto :goto_1a

    .line 1095
    :cond_28
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->scheduleAddressObtaining(Lcom/oneplus/gallery2/media/MediaStoreMedia;)V

    goto/16 :goto_a

    .line 1111
    :cond_29
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_DisplayName:Ljava/lang/String;

    .line 1112
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_DISPLAY_NAME_CHANGED:I

    or-int/2addr v1, v0

    goto/16 :goto_b

    .line 1118
    :cond_2a
    iget-object v0, p1, Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_Title:Ljava/lang/String;

    .line 1119
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_TITLE_CHANGED:I

    or-int/2addr v1, v0

    goto/16 :goto_c

    .line 1124
    :cond_2b
    const/4 v0, 0x0

    goto/16 :goto_d

    .line 1125
    :cond_2c
    iget-wide v2, p2, Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;->takenTime:J

    goto/16 :goto_e

    .line 1131
    :cond_2d
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_TakenTime:J

    goto/16 :goto_f

    .line 1140
    :cond_2e
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->oneplusFlags:J

    const-wide/16 v6, 0x20

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_10

    :cond_2f
    const/4 v2, 0x1

    .line 1141
    goto/16 :goto_11

    .line 1143
    :cond_30
    if-nez v0, :cond_31

    .line 1146
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1147
    :goto_1b
    sget v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_VISIBILITY_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_12

    .line 1144
    :cond_31
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    goto :goto_1b

    .line 1153
    :cond_32
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionVersion:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionVersion:J

    .line 1154
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionFileTime:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionFileTime:J

    .line 1155
    iget-object v1, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->objectDetectionResult:Ljava/util/List;

    invoke-direct {p0, v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->updateObjectDetectionResult(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1156
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_CONTENT_OBJECT_TYPES_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_13

    .line 1163
    :cond_33
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_CONTENT_OBJECT_TYPES_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_13

    .line 1169
    :cond_34
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionVersion:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionVersion:J

    .line 1170
    iget-wide v2, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionFileTime:J

    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionFileTime:J

    .line 1171
    iget-object v1, v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->sceneDetectionResult:Ljava/util/List;

    invoke-direct {p0, v1, p3}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->updateSceneDetectionResult(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1172
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_CONTENT_SCENES_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_14

    .line 1179
    :cond_35
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_CONTENT_SCENES_CHANGED:I

    or-int/2addr v0, v1

    goto/16 :goto_14
.end method

.method public openInputStream(Lcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ContentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1202
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No source to open input stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
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

    .line 1199
    sget-object v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "openInputStream() - fail"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1203
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_FilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method final release()V
    .locals 2

    .prologue
    .line 1263
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1264
    return-void
.end method

.method public removeFromAlbum(JI)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1272
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->canAddToAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumManager;

    .line 1277
    if-eqz v0, :cond_1

    .line 1284
    invoke-virtual {v0, p1, p2, p0}, Lcom/oneplus/gallery2/media/AlbumManager;->removeMediaFromAlbum(JLcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0

    .line 1273
    :cond_0
    return v2

    .line 1279
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeFromAlbum() - No AlbumManager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return v2
.end method

.method public setFavorite(Z)Z
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1292
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 1293
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isFavoriteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isFavorite()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1297
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 1298
    if-nez p1, :cond_2

    .line 1305
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1306
    invoke-virtual {v0, p0, v2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    .line 1308
    :goto_0
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_FAVORITE_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1309
    return v3

    .line 1294
    :cond_0
    return v2

    .line 1296
    :cond_1
    return v3

    .line 1300
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1301
    invoke-virtual {v0, p0, v4, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    goto :goto_0
.end method

.method public setVisible(Z)Z
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1316
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 1317
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isVisibilityChangeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1321
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 1322
    if-eqz p1, :cond_2

    .line 1329
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1330
    invoke-virtual {v0, p0, v2, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    .line 1332
    :goto_0
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_VISIBILITY_CHANGED:I

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    .line 1333
    return v3

    .line 1318
    :cond_0
    return v2

    .line 1320
    :cond_1
    return v3

    .line 1324
    :cond_2
    iget v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_InternalFlags:I

    .line 1325
    invoke-virtual {v0, p0, v4, v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateOnePlusFlags(Lcom/oneplus/gallery2/media/MediaStoreMedia;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1341
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
    .line 1353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->onUpdate(Lcom/oneplus/gallery2/media/MediaStoreMedia$DbValues;Lcom/oneplus/gallery2/media/MediaStoreMedia$FileInfo;Z)I

    move-result v0

    return v0
.end method

.method public updateObjectDetectionResult(JJLjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1367
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 1368
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 1373
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateObjectDetectionResult(Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V

    .line 1374
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionVersion:J

    .line 1375
    iput-wide p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_ObjectDetectionFileTime:J

    .line 1376
    invoke-direct {p0, p5, v7}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->updateObjectDetectionResult(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1383
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1369
    :cond_0
    return v7

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v7

    .line 1379
    :goto_1
    sget v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_CONTENT_OBJECT_TYPES_CHANGED:I

    or-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 1378
    :cond_2
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_SUB_MEDIA:I

    goto :goto_1
.end method

.method public updateSceneDetectionResult(JJLjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1459
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->verifyAccess()V

    .line 1460
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 1465
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->updateSceneDetectionResult(Lcom/oneplus/gallery2/media/MediaStoreMedia;JJLjava/util/List;)V

    .line 1466
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionVersion:J

    .line 1467
    iput-wide p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMedia;->m_SceneDetectionFileTime:J

    .line 1468
    invoke-direct {p0, p5, v7}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->updateSceneDetectionResult(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1475
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1461
    :cond_0
    return v7

    .line 1470
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaStoreMedia;->isSubMedia()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v7

    .line 1471
    :goto_1
    sget v2, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_CONTENT_SCENES_CHANGED:I

    or-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->notifyMediaUpdatedByItself(Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0

    .line 1470
    :cond_2
    sget v1, Lcom/oneplus/gallery2/media/MediaStoreMedia;->FLAG_SUB_MEDIA:I

    goto :goto_1
.end method
