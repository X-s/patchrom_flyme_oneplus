.class public final Lcom/oneplus/gallery2/media/GalleryDatabase;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ObjectDetectionResult;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;
    }
.end annotation


# static fields
.field private static final COLUMN_ADDRESS_ADDRESS_LINE_0:Ljava/lang/String; = "address_address_line_0"

.field private static final COLUMN_ADDRESS_ADDRESS_LINE_1:Ljava/lang/String; = "address_address_line_1"

.field private static final COLUMN_ADDRESS_ADMIN_AREA:Ljava/lang/String; = "address_admin_area"

.field private static final COLUMN_ADDRESS_COUNTRY:Ljava/lang/String; = "address_country"

.field private static final COLUMN_ADDRESS_FEATURE:Ljava/lang/String; = "address_feature"

.field private static final COLUMN_ADDRESS_LATITUDE:Ljava/lang/String; = "address_latitude"

.field private static final COLUMN_ADDRESS_LOCALE:Ljava/lang/String; = "address_locale"

.field private static final COLUMN_ADDRESS_LOCALITY:Ljava/lang/String; = "address_locality"

.field private static final COLUMN_ADDRESS_LONGITUDE:Ljava/lang/String; = "address_longitude"

.field private static final COLUMN_ADDRESS_SUB_ADMIN_AREA:Ljava/lang/String; = "address_sub_admin_area"

.field private static final COLUMN_ADDRESS_SUB_LOCALITY:Ljava/lang/String; = "address_sub_locality"

.field private static final COLUMN_ALBUM_ID:Ljava/lang/String; = "album_id"

.field private static final COLUMN_DATE_ADDED:Ljava/lang/String; = "date_added"

.field private static final COLUMN_DATE_MEDIA_ADDED:Ljava/lang/String; = "date_media_added"

.field private static final COLUMN_DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field private static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_MEDIA_ID:Ljava/lang/String; = "media_id"

.field private static final COLUMN_OBJECT_DETECTION_FILE_TIME:Ljava/lang/String; = "object_detection_file_time"

.field private static final COLUMN_OBJECT_DETECTION_RESULT:Ljava/lang/String; = "object_detection_result"

.field private static final COLUMN_OBJECT_DETECTION_VERSION:Ljava/lang/String; = "object_detection_version"

.field public static final COLUMN_ONEPLUS_FLAGS:Ljava/lang/String; = "oneplus_flags"

.field private static final COLUMN_SCENE_DETECTION_FILE_TIME:Ljava/lang/String; = "scene_detection_file_time"

.field private static final COLUMN_SCENE_DETECTION_RESULT:Ljava/lang/String; = "scene_detection_result"

.field private static final COLUMN_SCENE_DETECTION_VERSION:Ljava/lang/String; = "scene_detection_version"

.field private static final CONTENT_URI_PREFIX_EXTRA_MEDIA_INFO:Ljava/lang/String; = "content://oneplus.gallery/media/"

.field private static final DB_NAME:Ljava/lang/String; = "gallery.db"

.field private static final DB_VERSION:I = 0xd

.field private static final GALLERY_CONTENT_PROVIDER_URI_PREFIX:Ljava/lang/String; = "content://oneplus.gallery/"

.field private static final INDEX_ALBUM_ID:Ljava/lang/String; = "album_id_index"

.field private static final INDEX_MEDIA_ID:Ljava/lang/String; = "media_id_index"

.field private static final IS_SERVER_MODE:Z

.field private static final READ_ONLY_MODE:Z = false

.field private static final SQL_ALTER_ALBUM_TABLE_ADD_COLUMN_ONEPLUS_FLAG:Ljava/lang/String; = "ALTER TABLE album ADD oneplus_flags INTEGER;"

.field private static final SQL_ALTER_DIRECTORY_TABLE_ADD_COLUMN_ONEPLUS_FLAG:Ljava/lang/String; = "ALTER TABLE directory ADD oneplus_flags INTEGER;"

.field private static final SQL_ALTER_MEDIA_TABLE_ADD_COLUMN_ONEPLUS_FLAG:Ljava/lang/String; = "ALTER TABLE media ADD oneplus_flags INTEGER;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_ADDRESS_LINE_0:Ljava/lang/String; = "ALTER TABLE media ADD address_address_line_0 TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_ADDRESS_LINE_1:Ljava/lang/String; = "ALTER TABLE media ADD address_address_line_1 TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_ADMIN_AREA:Ljava/lang/String; = "ALTER TABLE media ADD address_admin_area TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_COUNTRY:Ljava/lang/String; = "ALTER TABLE media ADD address_country TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_FEATURE:Ljava/lang/String; = "ALTER TABLE media ADD address_feature TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_LATITUDE:Ljava/lang/String; = "ALTER TABLE media ADD address_latitude REAL;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_LOCALE:Ljava/lang/String; = "ALTER TABLE media ADD address_locale TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_LOCALITY:Ljava/lang/String; = "ALTER TABLE media ADD address_locality TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_LONGITUDE:Ljava/lang/String; = "ALTER TABLE media ADD address_longitude REAL;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_SUB_ADMIN_AREA:Ljava/lang/String; = "ALTER TABLE media ADD address_sub_admin_area TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_ADDRESS_SUB_LOCALITY:Ljava/lang/String; = "ALTER TABLE media ADD address_sub_locality TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_DATE_ADDED:Ljava/lang/String; = "ALTER TABLE album ADD date_added INTEGER;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_DATE_MEDIA_ADDED:Ljava/lang/String; = "ALTER TABLE album ADD date_media_added INTEGER;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_DATE_MODIFIED:Ljava/lang/String; = "ALTER TABLE album ADD date_modified INTEGER;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_OBJECT_DETECTION_FILE_TIME:Ljava/lang/String; = "ALTER TABLE media ADD object_detection_file_time INTEGER DEFAULT 0;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_OBJECT_DETECTION_RESULT:Ljava/lang/String; = "ALTER TABLE media ADD object_detection_result TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_OBJECT_DETECTION_VERSION:Ljava/lang/String; = "ALTER TABLE media ADD object_detection_version INTEGER DEFAULT 0;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_SCENE_DETECTION_FILE_TIME:Ljava/lang/String; = "ALTER TABLE media ADD scene_detection_file_time INTEGER DEFAULT 0;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_SCENE_DETECTION_RESULT:Ljava/lang/String; = "ALTER TABLE media ADD scene_detection_result TEXT;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_SCENE_DETECTION_VERSION:Ljava/lang/String; = "ALTER TABLE media ADD scene_detection_version INTEGER DEFAULT 0;"

.field private static final SQL_CREATE_INDEX_ALBUM_ID:Ljava/lang/String; = "CREATE INDEX album_id_index ON album_media(album_id);"

.field private static final SQL_CREATE_INDEX_MEDIA_ID:Ljava/lang/String; = "CREATE INDEX media_id_index ON media(media_id);"

.field private static final SQL_CREATE_TABLE_ALBUM:Ljava/lang/String; = "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER,oneplus_flags INTEGER);"

.field private static final SQL_CREATE_TABLE_ALBUM_MEDIA:Ljava/lang/String; = "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

.field private static final SQL_CREATE_TABLE_DIRECTORY:Ljava/lang/String; = "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER,oneplus_flags INTEGER);"

.field private static final SQL_CREATE_TABLE_MEDIA:Ljava/lang/String; = "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER,address_locale TEXT,address_latitude REAL,address_longitude REAL,address_country TEXT,address_admin_area TEXT,address_sub_admin_area TEXT,address_locality TEXT,address_sub_locality TEXT,address_feature TEXT,address_address_line_0 TEXT,address_address_line_1 TEXT,object_detection_version INTEGER DEFAULT 0,object_detection_file_time INTEGER DEFAULT 0,object_detection_result TEXT,scene_detection_version INTEGER DEFAULT 0,scene_detection_file_time INTEGER DEFAULT 0,scene_detection_result TEXT);"

.field private static final TABLE_ALBUM:Ljava/lang/String; = "album"

.field private static final TABLE_ALBUM_MEDIA:Ljava/lang/String; = "album_media"

.field private static final TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_DIRECTORY:Ljava/lang/String; = "directory"

.field private static final TABLE_MEDIA:Ljava/lang/String; = "media"

.field private static final TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final m_AlbumInfoChangeCBHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final m_AlbumInfoLock:Ljava/lang/Object;

.field private static volatile m_AlbumInfoTable:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final m_AlbumMediaRelationLock:Ljava/lang/Object;

.field private static volatile m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile m_Database:Landroid/database/sqlite/SQLiteDatabase;

.field private static final m_DatabaseLock:Ljava/lang/Object;

.field private static final m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final m_ExtraDirectoryInfoLock:Ljava/lang/Object;

.field private static volatile m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final m_ExtraMediaInfoLock:Ljava/lang/Object;

.field private static volatile m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "album_id"

    .line 77
    aput-object v3, v2, v0

    const-string/jumbo v3, "media_id"

    .line 78
    aput-object v3, v2, v1

    .line 76
    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    const/16 v2, 0x13

    .line 83
    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    .line 84
    aput-object v3, v2, v0

    const-string/jumbo v3, "oneplus_flags"

    .line 85
    aput-object v3, v2, v1

    const-string/jumbo v3, "address_locale"

    .line 86
    aput-object v3, v2, v4

    const/4 v3, 0x3

    const-string/jumbo v4, "address_latitude"

    .line 87
    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "address_longitude"

    .line 88
    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "address_country"

    .line 89
    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "address_admin_area"

    .line 90
    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "address_sub_admin_area"

    .line 91
    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "address_locality"

    .line 92
    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "address_sub_locality"

    .line 93
    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "address_feature"

    .line 94
    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "address_address_line_0"

    .line 95
    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "address_address_line_1"

    .line 96
    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "object_detection_version"

    .line 97
    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "object_detection_file_time"

    .line 98
    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "object_detection_result"

    .line 99
    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "scene_detection_version"

    .line 100
    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "scene_detection_file_time"

    .line 101
    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "scene_detection_result"

    .line 102
    aput-object v4, v2, v3

    .line 83
    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 236
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    .line 239
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    .line 243
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_DatabaseLock:Ljava/lang/Object;

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    .line 245
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    .line 248
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    .line 741
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const-class v2, Lcom/oneplus/gallery2/media/GalleryDatabase;

    .line 742
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {}, Lcom/oneplus/gallery2/GalleryLib;->isClient()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    .line 744
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "Access database as client"

    .line 750
    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 751
    :goto_0
    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    .line 754
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v0, :cond_2

    .line 777
    :goto_1
    return-void

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "(Server)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Access database as server"

    .line 747
    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$1;

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$1;-><init>(Landroid/os/Handler;)V

    .line 774
    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://oneplus.gallery/media"

    .line 775
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    return-void
.end method

.method static synthetic access$0(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1571
    invoke-static {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onGalleryContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/List;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/List;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1447
    invoke-static {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$7(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1454
    invoke-static {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$8(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1461
    invoke-static {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static addAlbumInfo(Ljava/lang/String;)Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 792
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 797
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;-><init>()V

    .line 798
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 799
    iput-object p0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    .line 801
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    .line 802
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    const-string/jumbo v3, "_display_name"

    .line 803
    iget-object v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "date_added"

    .line 804
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_modified"

    .line 805
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_media_added"

    .line 806
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "oneplus_flags"

    .line 807
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->oneplusFlags:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "album"

    .line 810
    invoke-static {v3, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 811
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 812
    monitor-exit v1

    return-object v6

    .line 793
    :cond_0
    return-object v6

    .line 813
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 814
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    .line 815
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 816
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 794
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 828
    if-eqz p0, :cond_1

    .line 830
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v1

    .line 833
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    .line 834
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 836
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 837
    if-nez v0, :cond_3

    .line 839
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v6, "album_id"

    .line 840
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "media_id"

    .line 841
    iget-wide v8, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "album_media"

    .line 842
    invoke-static {v6, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 844
    if-nez v0, :cond_4

    .line 846
    :goto_0
    monitor-exit v4

    return v10

    .line 829
    :cond_1
    return v10

    .line 831
    :cond_2
    return v10

    .line 837
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 838
    monitor-exit v4

    return v11

    .line 845
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v0

    .line 834
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 848
    :cond_5
    if-eqz v0, :cond_6

    .line 854
    :goto_1
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 855
    monitor-exit v4

    return v11

    .line 850
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 851
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 852
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static addExtraDirectoryInfoChangeCallback(Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 867
    if-eqz p0, :cond_0

    .line 869
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 871
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$2;

    const-string/jumbo v2, "ExtraDirectoryInfoChangeCallback"

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$2;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V

    .line 882
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    monitor-exit v1

    return-object v0

    .line 868
    :cond_0
    return-object v0

    .line 883
    :catchall_0
    move-exception v0

    .line 869
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 895
    if-eqz p0, :cond_0

    .line 900
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 906
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 910
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 911
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toContentValues(Landroid/content/ContentValues;)V

    const-string/jumbo v3, "media"

    .line 914
    invoke-static {v3, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 916
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 917
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 918
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 897
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addExtraMediaInfo() - No media info to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    return v6

    .line 901
    :cond_1
    return v6

    .line 907
    :cond_2
    :try_start_1
    monitor-exit v1

    return v6

    .line 922
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addExtraMediaInfo() - Fail to insert"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    monitor-exit v1

    return v6

    :catchall_0
    move-exception v0

    .line 902
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static addExtraMediaInfoChangeCallback(Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;)Lcom/oneplus/base/Handle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 936
    if-eqz p0, :cond_0

    .line 938
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 940
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$3;

    const-string/jumbo v2, "ExtraMediaInfoChangeCallback"

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$3;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V

    .line 951
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    monitor-exit v1

    return-object v0

    .line 937
    :cond_0
    return-object v0

    .line 952
    :catchall_0
    move-exception v0

    .line 938
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createExtraMediaInfoUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/media/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 975
    :try_start_0
    sget-boolean v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v2, :cond_1

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://oneplus.gallery/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 988
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 989
    if-eqz v3, :cond_4

    .line 998
    :try_start_1
    invoke-virtual {v3, v2, p1, p2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    .line 1002
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 998
    return v0

    .line 977
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 982
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_3

    return v1

    .line 979
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "delete() - Fail to open database"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return v1

    .line 982
    :cond_3
    return v0

    .line 991
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "delete() - No gallery content provider"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return v1

    .line 998
    :catchall_0
    move-exception v0

    .line 1002
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 1003
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1008
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "delete() - Fail to delete"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1009
    return v1
.end method

.method public static deleteAlbumInfo(J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1021
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1025
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 1026
    if-eqz v0, :cond_1

    .line 1028
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "album"

    .line 1029
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1030
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 1031
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 1022
    :cond_0
    return v2

    .line 1027
    :cond_1
    monitor-exit v1

    return v2

    .line 1031
    :catchall_0
    move-exception v0

    .line 1023
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1043
    if-eqz p0, :cond_1

    .line 1045
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v1

    .line 1048
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1050
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1051
    if-nez v0, :cond_3

    .line 1052
    :cond_0
    monitor-exit v2

    return v3

    .line 1044
    :cond_1
    return v3

    .line 1046
    :cond_2
    return v3

    .line 1051
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "album_media"

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "album_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "media_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1054
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 1055
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1048
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteAlbumMediaRelationsByAlbumId(J)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1067
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1072
    if-eqz v0, :cond_1

    .line 1074
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1079
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "album_media"

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "album_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1081
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 1082
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    .line 1083
    :catchall_0
    move-exception v0

    .line 1069
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1068
    :cond_0
    return v3

    .line 1073
    :cond_1
    :try_start_1
    monitor-exit v1

    return v3

    .line 1076
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1077
    monitor-exit v1

    return v3

    .line 1083
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0
.end method

.method public static deleteAlbumMediaRelationsByMediaId(J)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1096
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1102
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v1

    :goto_0
    if-ltz v3, :cond_6

    .line 1104
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1105
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1106
    instance-of v5, v0, Ljava/util/Set;

    if-nez v5, :cond_1

    move-object v0, v1

    move-object v1, v2

    .line 1102
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1097
    :cond_0
    return v9

    .line 1108
    :cond_1
    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-direct {v5, v6, v7, p0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 1109
    check-cast v0, Ljava/util/Set;

    .line 1110
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 1112
    :cond_2
    if-eqz v2, :cond_3

    .line 1114
    :goto_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 1113
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 1134
    :catchall_0
    move-exception v0

    .line 1098
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1117
    :cond_4
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 1119
    :goto_3
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_1

    .line 1118
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 1124
    :cond_6
    if-eqz v2, :cond_8

    .line 1126
    if-nez v1, :cond_9

    :cond_7
    const-string/jumbo v0, "album_media"

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "media_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_a

    .line 1133
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-static {v3, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 1132
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 1125
    :cond_8
    monitor-exit v4

    return v9

    .line 1128
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_7

    .line 1129
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1128
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    .line 1134
    :cond_a
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0
.end method

.method public static deleteExtraDirectoryInfo(J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1147
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1153
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 1154
    if-eqz v0, :cond_1

    .line 1156
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "directory"

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1158
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 1159
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 1148
    :cond_0
    return v2

    .line 1155
    :cond_1
    monitor-exit v1

    return v2

    .line 1159
    :catchall_0
    move-exception v0

    .line 1151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteExtraMediaInfo(J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1171
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1175
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1176
    if-eqz v0, :cond_1

    .line 1178
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "media"

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "media_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1180
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 1181
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 1172
    :cond_0
    return v2

    .line 1177
    :cond_1
    monitor-exit v1

    return v2

    .line 1181
    :catchall_0
    move-exception v0

    .line 1173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAlbumInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1197
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1200
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1201
    instance-of v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 1198
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1194
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1202
    :cond_1
    :try_start_1
    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1204
    :catchall_0
    move-exception v0

    .line 1195
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1204
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3
.end method

.method public static getAlbumMediaRelationsByAlbumId(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1217
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1222
    if-nez v0, :cond_1

    .line 1219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1218
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1224
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 1226
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1227
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2
.end method

.method public static getExtraDirectoryInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1241
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1245
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 1246
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    .line 1242
    :cond_0
    return-object v1

    .line 1246
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1243
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1258
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1262
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1263
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    .line 1259
    :cond_0
    return-object v1

    .line 1263
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1260
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getExtraMediaInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1279
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1282
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1283
    instance-of v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 1280
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1276
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1284
    :cond_1
    :try_start_1
    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1286
    :catchall_0
    move-exception v0

    .line 1277
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1286
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3
.end method

.method private static insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 1298
    :try_start_0
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1311
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1312
    if-eqz v1, :cond_2

    .line 1321
    :try_start_1
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1322
    if-nez v0, :cond_3

    .line 1328
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1324
    return-wide v4

    .line 1300
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    .line 1302
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insert() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    return-wide v4

    .line 1314
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update() - No gallery content provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1315
    return-wide v4

    .line 1323
    :cond_3
    :try_start_3
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 1328
    :try_start_4
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1323
    return-wide v2

    .line 1324
    :catchall_0
    move-exception v0

    .line 1328
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1329
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 1334
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "insert() - Fail to insert"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1335
    return-wide v4
.end method

.method private static invalidateExtraMediaInfo(J)V
    .locals 10

    .prologue
    .line 1343
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1346
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    .line 1350
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-object v7, v0

    .line 1353
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v9}, Lcom/oneplus/base/SimpleRef;-><init>()V

    const-string/jumbo v1, "media"

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "media_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/oneplus/gallery2/media/GalleryDatabase$4;

    invoke-direct {v6, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$4;-><init>(Lcom/oneplus/base/Ref;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v1

    .line 1362
    if-eqz v1, :cond_2

    .line 1366
    :goto_0
    invoke-interface {v9}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1369
    if-eqz v7, :cond_3

    .line 1378
    invoke-virtual {v7, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1343
    :cond_0
    :goto_1
    monitor-exit v8

    .line 1394
    return-void

    .line 1347
    :cond_1
    monitor-exit v8

    return-void

    .line 1364
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalidateExtraMediaInfo() - Fail to query from database"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1371
    :cond_3
    if-eqz v1, :cond_0

    .line 1373
    :try_start_1
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1374
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " added"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1375
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 1380
    :cond_4
    if-nez v1, :cond_5

    .line 1388
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1389
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, " deleted"

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1390
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v1, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 1382
    :cond_5
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1383
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " updated"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1384
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    invoke-static {v2, v7, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1400
    if-nez p0, :cond_1

    .line 1402
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isColumnExist() - db or table name or column name is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    return v3

    .line 1400
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRAGMA table_info("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1406
    if-nez v0, :cond_3

    .line 1418
    :cond_2
    return v3

    :goto_0
    const-string/jumbo v1, "name"

    .line 1410
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    .line 1411
    if-ne v1, v2, :cond_4

    .line 1408
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1411
    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1413
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isColumnExist() - column "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exist in the table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const/4 v0, 0x1

    return v0
.end method

.method private static notifyAdded(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<TTValue;>;>;>;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 1425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1426
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onAdded(Ljava/lang/Object;)V

    .line 1425
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1427
    :cond_0
    return-void
.end method

.method private static notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<TTValue;>;>;>;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 1433
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1434
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onDeleted(Ljava/lang/Object;)V

    .line 1433
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1435
    :cond_0
    return-void
.end method

.method private static notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
            "<TTValue;>;>;>;TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 1441
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1442
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onUpdated(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1441
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1443
    :cond_0
    return-void
.end method

.method private static onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0xd

    .line 1449
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1450
    return-void
.end method

.method private static onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 1456
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDatabaseDowngrade() - DB downgrade from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method private static onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v5, 0x6

    const/4 v7, 0x0

    .line 1463
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDatabaseUpgrade() - Upgrade from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    if-lt p1, v5, :cond_1

    move v0, p1

    .line 1483
    :goto_0
    if-eq v0, v5, :cond_3

    .line 1498
    :goto_1
    if-eq v0, v2, :cond_6

    .line 1508
    :goto_2
    if-eq v0, v1, :cond_8

    :goto_3
    const/16 v1, 0x9

    .line 1513
    if-eq v0, v1, :cond_9

    :goto_4
    const/16 v1, 0xa

    .line 1539
    if-eq v0, v1, :cond_15

    :goto_5
    const/16 v1, 0xb

    .line 1547
    if-eq v0, v1, :cond_18

    :goto_6
    const/16 v1, 0xc

    .line 1557
    if-eq v0, v1, :cond_1c

    .line 1567
    :cond_0
    :goto_7
    return-void

    .line 1467
    :cond_1
    if-gtz p1, :cond_2

    :goto_8
    const-string/jumbo v0, "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER,address_locale TEXT,address_latitude REAL,address_longitude REAL,address_country TEXT,address_admin_area TEXT,address_sub_admin_area TEXT,address_locality TEXT,address_sub_locality TEXT,address_feature TEXT,address_address_line_0 TEXT,address_address_line_1 TEXT,object_detection_version INTEGER DEFAULT 0,object_detection_file_time INTEGER DEFAULT 0,object_detection_result TEXT,scene_detection_version INTEGER DEFAULT 0,scene_detection_file_time INTEGER DEFAULT 0,scene_detection_result TEXT);"

    .line 1475
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER,oneplus_flags INTEGER);"

    .line 1476
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

    .line 1477
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER,oneplus_flags INTEGER);"

    .line 1478
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE INDEX album_id_index ON album_media(album_id);"

    .line 1479
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE INDEX media_id_index ON media(media_id);"

    .line 1480
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 1481
    goto :goto_0

    :cond_2
    const-string/jumbo v0, "DROP TABLE IF EXISTS media"

    .line 1469
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS album"

    .line 1470
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS album_media"

    .line 1471
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_8

    :cond_3
    const-string/jumbo v0, "album"

    const-string/jumbo v3, "date_added"

    .line 1485
    invoke-static {p0, v0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_9
    const-string/jumbo v0, "album"

    const-string/jumbo v3, "date_modified"

    .line 1487
    invoke-static {p0, v0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1490
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1491
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "date_added"

    .line 1492
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_modified"

    .line 1493
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_media_added"

    .line 1494
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "album"

    .line 1495
    invoke-virtual {p0, v3, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 1496
    goto/16 :goto_1

    :cond_4
    const-string/jumbo v0, "ALTER TABLE album ADD date_added INTEGER;"

    .line 1486
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_9

    :cond_5
    const-string/jumbo v0, "ALTER TABLE album ADD date_modified INTEGER;"

    .line 1488
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_a

    :cond_6
    const-string/jumbo v0, "album"

    const-string/jumbo v2, "date_media_added"

    .line 1500
    invoke-static {p0, v0, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1502
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1503
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "date_media_added"

    .line 1504
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "album"

    .line 1505
    invoke-virtual {p0, v2, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    .line 1506
    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "ALTER TABLE album ADD date_media_added INTEGER;"

    .line 1501
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_b

    :cond_8
    const-string/jumbo v0, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER,oneplus_flags INTEGER);"

    .line 1510
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 1511
    goto/16 :goto_3

    :cond_9
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_locale"

    .line 1515
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_c
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_latitude"

    .line 1517
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_d
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_longitude"

    .line 1519
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_e
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_country"

    .line 1521
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_f
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_admin_area"

    .line 1523
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_10
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_sub_admin_area"

    .line 1525
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_11
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_locality"

    .line 1527
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_12
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_sub_locality"

    .line 1529
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_13
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_feature"

    .line 1531
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_14
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_address_line_0"

    .line 1533
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_15
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "address_address_line_1"

    .line 1535
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_16
    const/16 v0, 0xa

    .line 1537
    goto/16 :goto_4

    :cond_a
    const-string/jumbo v0, "ALTER TABLE media ADD address_locale TEXT;"

    .line 1516
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_b
    const-string/jumbo v0, "ALTER TABLE media ADD address_latitude REAL;"

    .line 1518
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_d

    :cond_c
    const-string/jumbo v0, "ALTER TABLE media ADD address_longitude REAL;"

    .line 1520
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_e

    :cond_d
    const-string/jumbo v0, "ALTER TABLE media ADD address_country TEXT;"

    .line 1522
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    const-string/jumbo v0, "ALTER TABLE media ADD address_admin_area TEXT;"

    .line 1524
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_10

    :cond_f
    const-string/jumbo v0, "ALTER TABLE media ADD address_sub_admin_area TEXT;"

    .line 1526
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_11

    :cond_10
    const-string/jumbo v0, "ALTER TABLE media ADD address_locality TEXT;"

    .line 1528
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_12

    :cond_11
    const-string/jumbo v0, "ALTER TABLE media ADD address_sub_locality TEXT;"

    .line 1530
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_13

    :cond_12
    const-string/jumbo v0, "ALTER TABLE media ADD address_feature TEXT;"

    .line 1532
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_14

    :cond_13
    const-string/jumbo v0, "ALTER TABLE media ADD address_address_line_0 TEXT;"

    .line 1534
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    const-string/jumbo v0, "ALTER TABLE media ADD address_address_line_1 TEXT;"

    .line 1536
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_16

    :cond_15
    const-string/jumbo v0, "album"

    const-string/jumbo v1, "oneplus_flags"

    .line 1541
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_17
    const-string/jumbo v0, "directory"

    const-string/jumbo v1, "oneplus_flags"

    .line 1543
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_18
    const/16 v0, 0xb

    .line 1545
    goto/16 :goto_5

    :cond_16
    const-string/jumbo v0, "ALTER TABLE album ADD oneplus_flags INTEGER;"

    .line 1542
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_17

    :cond_17
    const-string/jumbo v0, "ALTER TABLE directory ADD oneplus_flags INTEGER;"

    .line 1544
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_18

    :cond_18
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "object_detection_version"

    .line 1549
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_19
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "object_detection_file_time"

    .line 1551
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_1a
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "object_detection_result"

    .line 1553
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_1b
    const/16 v0, 0xc

    .line 1555
    goto/16 :goto_6

    :cond_19
    const-string/jumbo v0, "ALTER TABLE media ADD object_detection_version INTEGER DEFAULT 0;"

    .line 1550
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_19

    :cond_1a
    const-string/jumbo v0, "ALTER TABLE media ADD object_detection_file_time INTEGER DEFAULT 0;"

    .line 1552
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1a

    :cond_1b
    const-string/jumbo v0, "ALTER TABLE media ADD object_detection_result TEXT;"

    .line 1554
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1c
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "scene_detection_version"

    .line 1559
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1c
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "scene_detection_file_time"

    .line 1561
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_1d
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "scene_detection_result"

    .line 1563
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->isColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ALTER TABLE media ADD scene_detection_result TEXT;"

    .line 1564
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1d
    const-string/jumbo v0, "ALTER TABLE media ADD scene_detection_version INTEGER DEFAULT 0;"

    .line 1560
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1e
    const-string/jumbo v0, "ALTER TABLE media ADD scene_detection_file_time INTEGER DEFAULT 0;"

    .line 1562
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private static onGalleryContentChanged(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1573
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGalleryContentChanged() - URI : "

    invoke-static {v0, v1, p0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1575
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://oneplus.gallery/media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1589
    :goto_0
    return-void

    .line 1580
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1587
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->invalidateExtraMediaInfo(J)V

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1584
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onGalleryContentChanged() - Fail to get media ID"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1585
    return-void
.end method

.method private static openDatabase()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1595
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_1

    .line 1596
    :cond_0
    return v8

    .line 1595
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1597
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_DatabaseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1599
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 1601
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "openDatabase() - Start"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1603
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$5;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    const-string/jumbo v5, "gallery.db"

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase$5;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1635
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "openDatabase() - Take "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms to open as writable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    :try_start_2
    monitor-exit v1

    return v8

    .line 1600
    :cond_2
    monitor-exit v1

    return v8

    .line 1637
    :catch_0
    move-exception v0

    .line 1641
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openDatabase() - Fail to open database"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1642
    monitor-exit v1

    return v9

    :catchall_0
    move-exception v0

    .line 1597
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1653
    :try_start_0
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_1

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1672
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1673
    if-eqz v0, :cond_6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1680
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v1

    .line 1682
    :try_start_2
    invoke-interface {p5, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;->onQuery(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1683
    if-nez v1, :cond_7

    .line 1686
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1689
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1656
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1663
    :try_start_4
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1665
    :try_start_5
    invoke-interface {p5, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;->onQuery(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1666
    if-eqz v0, :cond_0

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_4

    if-ne v1, v0, :cond_5

    :goto_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 1689
    :catch_0
    move-exception v0

    .line 1693
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "query() - Unhandled error"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1694
    return v9

    .line 1658
    :cond_2
    :try_start_8
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 1659
    return v9

    .line 1666
    :catchall_1
    move-exception v1

    if-nez v0, :cond_3

    :goto_4
    :try_start_9
    throw v1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_3

    :cond_5
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1675
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query() - No gallery content provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 1676
    return v9

    .line 1683
    :cond_7
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    if-eqz v8, :cond_9

    if-ne v8, v1, :cond_a

    :goto_5
    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v1

    .line 1686
    :try_start_d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1687
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 1683
    :catchall_5
    move-exception v8

    if-nez v1, :cond_8

    :goto_6
    :try_start_e
    throw v8

    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_6

    :cond_9
    move-object v8, v1

    goto :goto_5

    :cond_a
    :try_start_f
    invoke-virtual {v8, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_5
.end method

.method private static setupAlbumInfoTable()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1702
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1704
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1706
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1710
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1714
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1719
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "album"

    .line 1720
    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$6;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$6;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1731
    if-eqz v0, :cond_3

    .line 1738
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1739
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupAlbumInfoTable() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to setup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    .line 1741
    monitor-exit v6

    return v11

    .line 1703
    :cond_0
    return v11

    .line 1707
    :cond_1
    monitor-exit v6

    return v11

    .line 1716
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    monitor-exit v6

    return v10

    .line 1733
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    monitor-exit v6

    return v10

    .line 1741
    :catchall_0
    move-exception v0

    .line 1704
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupAlbumMediaRelationTable()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1749
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1751
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1753
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1757
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumMediaRelationTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1761
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1766
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "album_media"

    .line 1767
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$7;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$7;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1784
    if-eqz v0, :cond_3

    .line 1791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1792
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupAlbumMediaRelationTable() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to setup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    .line 1794
    monitor-exit v6

    return v11

    .line 1750
    :cond_0
    return v11

    .line 1754
    :cond_1
    monitor-exit v6

    return v11

    .line 1763
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumMediaRelationTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    monitor-exit v6

    return v10

    .line 1786
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumMediaRelationTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    monitor-exit v6

    return v10

    .line 1794
    :catchall_0
    move-exception v0

    .line 1751
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupExtraDirectoryInfoTable()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1802
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1804
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1806
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1810
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraDirectoryInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1814
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "directory"

    .line 1820
    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$8;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$8;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1831
    if-eqz v0, :cond_3

    .line 1838
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1839
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupExtraDirectoryInfoTable() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to setup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    .line 1841
    monitor-exit v6

    return v11

    .line 1803
    :cond_0
    return v11

    .line 1807
    :cond_1
    monitor-exit v6

    return v11

    .line 1816
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraDirectoryInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    monitor-exit v6

    return v10

    .line 1833
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraDirectoryInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    monitor-exit v6

    return v10

    .line 1841
    :catchall_0
    move-exception v0

    .line 1804
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupExtraMediaInfoTable()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1849
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1851
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1853
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1857
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraMediaInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1861
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "media"

    .line 1867
    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$9;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$9;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1878
    if-eqz v0, :cond_3

    .line 1885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1886
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setupExtraMediaInfoTable() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to setup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    .line 1888
    monitor-exit v6

    return v11

    .line 1850
    :cond_0
    return v11

    .line 1854
    :cond_1
    monitor-exit v6

    return v11

    .line 1863
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraMediaInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    monitor-exit v6

    return v10

    .line 1880
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraMediaInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    monitor-exit v6

    return v10

    .line 1888
    :catchall_0
    move-exception v0

    .line 1851
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1900
    :try_start_0
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_0

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1913
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1914
    if-eqz v1, :cond_2

    .line 1923
    :try_start_1
    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1927
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1923
    return v0

    .line 1902
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1907
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1904
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    return v3

    .line 1916
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update() - No gallery content provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    return v3

    .line 1923
    :catchall_0
    move-exception v0

    .line 1927
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1928
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1933
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update() - Fail to update"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1934
    return v3
.end method

.method public static updateAlbumInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1947
    if-eqz p0, :cond_0

    .line 1951
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1955
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v1

    .line 1956
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 1957
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1960
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v0, "_display_name"

    .line 1961
    iget-object v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "date_modified"

    .line 1962
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "date_media_added"

    .line 1963
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "oneplus_flags"

    .line 1964
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->oneplusFlags:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1967
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 1968
    if-eqz v0, :cond_2

    const-string/jumbo v6, "album"

    .line 1972
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v5, v7, v8}, Lcom/oneplus/gallery2/media/GalleryDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1974
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1975
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1976
    monitor-exit v4

    const/4 v0, 0x1

    return v0

    .line 1948
    :cond_0
    return v9

    .line 1952
    :cond_1
    return v9

    .line 1969
    :cond_2
    monitor-exit v4

    return v9

    .line 1973
    :cond_3
    monitor-exit v4

    return v9

    .line 1976
    :catchall_0
    move-exception v0

    .line 1957
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateExtraDirectoryInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1989
    if-eqz p0, :cond_0

    .line 1993
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v1

    .line 1998
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->directoryId:J

    .line 1999
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2002
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v0, "date_media_added"

    .line 2003
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "oneplus_flags"

    .line 2004
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->oneplusFlags:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2007
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 2008
    if-eqz v0, :cond_2

    const-string/jumbo v6, "directory"

    .line 2025
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v5, v7, v8}, Lcom/oneplus/gallery2/media/GalleryDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_4

    .line 2031
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraDirectoryInfo() - Fail to update"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    monitor-exit v4

    return v10

    .line 1990
    :cond_0
    return v10

    .line 1994
    :cond_1
    return v10

    :cond_2
    const-string/jumbo v0, "_id"

    .line 2010
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "directory"

    .line 2011
    invoke-static {v0, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 2013
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2014
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 2015
    monitor-exit v4

    return v11

    .line 2019
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraDirectoryInfo() - Fail to insert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    monitor-exit v4

    return v10

    .line 2027
    :cond_4
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2028
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2029
    monitor-exit v4

    return v11

    .line 2032
    :catchall_0
    move-exception v0

    .line 1999
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2044
    if-eqz p0, :cond_0

    .line 2046
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2048
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    .line 2049
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 2050
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2053
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2054
    invoke-virtual {v1, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toContentValues(Landroid/content/ContentValues;)V

    .line 2057
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 2058
    if-eqz v0, :cond_2

    const-string/jumbo v6, "media"

    .line 2074
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "media_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v5, v7, v8}, Lcom/oneplus/gallery2/media/GalleryDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_4

    .line 2080
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraMediaInfo() - Fail to update"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    monitor-exit v4

    return v10

    .line 2045
    :cond_0
    return v10

    .line 2047
    :cond_1
    return v10

    :cond_2
    const-string/jumbo v0, "media"

    .line 2060
    invoke-static {v0, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 2062
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2063
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 2064
    monitor-exit v4

    return v11

    .line 2068
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraMediaInfo() - Fail to insert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    monitor-exit v4

    return v10

    .line 2076
    :cond_4
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2077
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2078
    monitor-exit v4

    return v11

    .line 2081
    :catchall_0
    move-exception v0

    .line 2050
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
