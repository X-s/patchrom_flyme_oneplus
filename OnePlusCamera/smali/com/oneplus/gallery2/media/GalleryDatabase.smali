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
        Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;
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

.field public static final COLUMN_ONEPLUS_FLAGS:Ljava/lang/String; = "oneplus_flags"

.field private static final CONTENT_URI_PREFIX_EXTRA_MEDIA_INFO:Ljava/lang/String; = "content://oneplus.gallery/media/"

.field private static final DB_NAME:Ljava/lang/String; = "gallery.db"

.field private static final DB_VERSION:I = 0xa

.field private static final GALLERY_CONTENT_PROVIDER_URI_PREFIX:Ljava/lang/String; = "content://oneplus.gallery/"

.field private static final INDEX_ALBUM_ID:Ljava/lang/String; = "album_id_index"

.field private static final INDEX_MEDIA_ID:Ljava/lang/String; = "media_id_index"

.field private static final IS_SERVER_MODE:Z

.field private static final READ_ONLY_MODE:Z = false

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

.field private static final SQL_CREATE_INDEX_ALBUM_ID:Ljava/lang/String; = "CREATE INDEX album_id_index ON album_media(album_id);"

.field private static final SQL_CREATE_INDEX_MEDIA_ID:Ljava/lang/String; = "CREATE INDEX media_id_index ON media(media_id);"

.field private static final SQL_CREATE_TABLE_ALBUM:Ljava/lang/String; = "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER);"

.field private static final SQL_CREATE_TABLE_ALBUM_MEDIA:Ljava/lang/String; = "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

.field private static final SQL_CREATE_TABLE_DIRECTORY:Ljava/lang/String; = "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

.field private static final SQL_CREATE_TABLE_MEDIA:Ljava/lang/String; = "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER,address_locale TEXT,address_latitude REAL,address_longitude REAL,address_country TEXT,address_admin_area TEXT,address_sub_admin_area TEXT,address_locality TEXT,address_sub_locality TEXT,address_feature TEXT,address_address_line_0 TEXT,address_address_line_1 TEXT);"

.field private static final TABLE_ALBUM:Ljava/lang/String; = "album"

.field private static final TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_ALBUM_MEDIA:Ljava/lang/String; = "album_media"

.field private static final TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_DIRECTORY:Ljava/lang/String; = "directory"

.field private static final TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

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
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "album_id"

    .line 71
    aput-object v3, v0, v2

    const-string/jumbo v3, "media_id"

    .line 72
    aput-object v3, v0, v1

    .line 70
    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 75
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    .line 76
    aput-object v3, v0, v2

    const-string/jumbo v3, "_display_name"

    .line 77
    aput-object v3, v0, v1

    const-string/jumbo v3, "date_added"

    .line 78
    aput-object v3, v0, v4

    const-string/jumbo v3, "date_modified"

    .line 79
    aput-object v3, v0, v5

    const-string/jumbo v3, "date_media_added"

    .line 80
    aput-object v3, v0, v6

    .line 75
    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    .line 84
    aput-object v3, v0, v2

    const-string/jumbo v3, "date_media_added"

    .line 85
    aput-object v3, v0, v1

    .line 83
    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

    const/16 v0, 0xd

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    .line 89
    aput-object v3, v0, v2

    const-string/jumbo v3, "oneplus_flags"

    .line 90
    aput-object v3, v0, v1

    const-string/jumbo v3, "address_locale"

    .line 91
    aput-object v3, v0, v4

    const-string/jumbo v3, "address_latitude"

    .line 92
    aput-object v3, v0, v5

    const-string/jumbo v3, "address_longitude"

    .line 93
    aput-object v3, v0, v6

    const/4 v3, 0x5

    const-string/jumbo v4, "address_country"

    .line 94
    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "address_admin_area"

    .line 95
    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "address_sub_admin_area"

    .line 96
    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "address_locality"

    .line 97
    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "address_sub_locality"

    .line 98
    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "address_feature"

    .line 99
    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "address_address_line_0"

    .line 100
    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "address_address_line_1"

    .line 101
    aput-object v4, v0, v3

    .line 88
    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_DatabaseLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    .line 512
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    .line 513
    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-class v3, Lcom/oneplus/gallery2/media/GalleryDatabase;

    .line 515
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 518
    :try_start_0
    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    .line 526
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "Access database as client"

    .line 532
    invoke-static {v3, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 533
    :goto_2
    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    .line 536
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v0, :cond_3

    .line 559
    :goto_3
    return-void

    .line 519
    :catch_0
    move-exception v0

    const-string/jumbo v5, "Fail to get application info"

    .line 522
    invoke-static {v3, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 523
    goto :goto_0

    :cond_1
    const-string/jumbo v5, "is_gallery_db_server"

    .line 525
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 528
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "(Server)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Access database as server"

    .line 529
    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 538
    :cond_3
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$1;

    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$1;-><init>(Landroid/os/Handler;)V

    .line 556
    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://oneplus.gallery/media"

    .line 557
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    return-void
.end method

.method static synthetic access$0(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1285
    invoke-static {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onGalleryContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/List;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/List;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1203
    invoke-static {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$7(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1210
    invoke-static {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$8(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 1217
    invoke-static {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static addAlbumInfo(Ljava/lang/String;)Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 574
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;-><init>()V

    .line 580
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 581
    iput-object p0, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    .line 583
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    .line 584
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    const-string/jumbo v3, "_display_name"

    .line 585
    iget-object v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "date_added"

    .line 586
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_modified"

    .line 587
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "date_media_added"

    .line 588
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "album"

    .line 591
    invoke-static {v3, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 592
    iget-wide v2, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 593
    monitor-exit v1

    return-object v6

    .line 575
    :cond_0
    return-object v6

    .line 594
    :cond_1
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 595
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    .line 596
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 597
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 576
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

    .line 609
    if-eqz p0, :cond_1

    .line 611
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v1

    .line 614
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    .line 615
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 617
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 618
    if-nez v0, :cond_3

    .line 620
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v6, "album_id"

    .line 621
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "media_id"

    .line 622
    iget-wide v8, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "album_media"

    .line 623
    invoke-static {v6, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 625
    if-nez v0, :cond_4

    .line 627
    :goto_0
    monitor-exit v4

    return v10

    .line 610
    :cond_1
    return v10

    .line 612
    :cond_2
    return v10

    .line 618
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 619
    monitor-exit v4

    return v11

    .line 626
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :catchall_0
    move-exception v0

    .line 615
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 629
    :cond_5
    if-eqz v0, :cond_6

    .line 635
    :goto_1
    :try_start_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 636
    monitor-exit v4

    return v11

    .line 631
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 632
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
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

    .line 648
    if-eqz p0, :cond_0

    .line 650
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$2;

    const-string/jumbo v2, "ExtraDirectoryInfoChangeCallback"

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$2;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V

    .line 663
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    monitor-exit v1

    return-object v0

    .line 649
    :cond_0
    return-object v0

    .line 664
    :catchall_0
    move-exception v0

    .line 650
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 676
    if-eqz p0, :cond_0

    .line 681
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 687
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 691
    new-instance v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 692
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toContentValues(Landroid/content/ContentValues;)V

    const-string/jumbo v3, "media"

    .line 695
    invoke-static {v3, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 697
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 698
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 699
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 678
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addExtraMediaInfo() - No media info to add"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return v6

    .line 682
    :cond_1
    return v6

    .line 688
    :cond_2
    :try_start_1
    monitor-exit v1

    return v6

    .line 703
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "addExtraMediaInfo() - Fail to insert"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    monitor-exit v1

    return v6

    :catchall_0
    move-exception v0

    .line 683
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

    .line 717
    if-eqz p0, :cond_0

    .line 719
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$3;

    const-string/jumbo v2, "ExtraMediaInfoChangeCallback"

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$3;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V

    .line 732
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    monitor-exit v1

    return-object v0

    .line 718
    :cond_0
    return-object v0

    .line 733
    :catchall_0
    move-exception v0

    .line 719
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createExtraMediaInfoUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 745
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

    .line 756
    :try_start_0
    sget-boolean v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v2, :cond_1

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://oneplus.gallery/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 769
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 770
    if-eqz v3, :cond_4

    .line 779
    :try_start_1
    invoke-virtual {v3, v2, p1, p2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    .line 783
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 779
    return v0

    .line 758
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 763
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_3

    return v1

    .line 760
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "delete() - Fail to open database"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return v1

    .line 763
    :cond_3
    return v0

    .line 772
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "delete() - No gallery content provider"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return v1

    .line 779
    :catchall_0
    move-exception v0

    .line 783
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 784
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 789
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "delete() - Fail to delete"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    return v1
.end method

.method public static deleteAlbumInfo(J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 802
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 806
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 807
    if-eqz v0, :cond_1

    .line 809
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "album"

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 811
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 812
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 803
    :cond_0
    return v2

    .line 808
    :cond_1
    monitor-exit v1

    return v2

    .line 812
    :catchall_0
    move-exception v0

    .line 804
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 824
    if-eqz p0, :cond_1

    .line 826
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v1

    .line 829
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 831
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    iget-wide v4, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 832
    if-nez v0, :cond_3

    .line 833
    :cond_0
    monitor-exit v2

    return v3

    .line 825
    :cond_1
    return v3

    .line 827
    :cond_2
    return v3

    .line 832
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "album_media"

    .line 834
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

    .line 835
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 836
    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 829
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteAlbumMediaRelationsByAlbumId(J)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 853
    if-eqz v0, :cond_1

    .line 855
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 860
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "album_media"

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "album_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 862
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 863
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    .line 864
    :catchall_0
    move-exception v0

    .line 850
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 849
    :cond_0
    return v3

    .line 854
    :cond_1
    :try_start_1
    monitor-exit v1

    return v3

    .line 857
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 858
    monitor-exit v1

    return v3

    .line 864
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

    .line 877
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 883
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v2, v1

    :goto_0
    if-ltz v3, :cond_6

    .line 885
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 886
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 887
    instance-of v5, v0, Ljava/util/Set;

    if-nez v5, :cond_1

    move-object v0, v1

    move-object v1, v2

    .line 883
    :goto_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 878
    :cond_0
    return v9

    .line 889
    :cond_1
    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-direct {v5, v6, v7, p0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 890
    check-cast v0, Ljava/util/Set;

    .line 891
    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 893
    :cond_2
    if-eqz v2, :cond_3

    .line 895
    :goto_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 894
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 915
    :catchall_0
    move-exception v0

    .line 879
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 898
    :cond_4
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 900
    :goto_3
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_1

    .line 899
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 905
    :cond_6
    if-eqz v2, :cond_8

    .line 907
    if-nez v1, :cond_9

    :cond_7
    const-string/jumbo v0, "album_media"

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "media_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 913
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_a

    .line 914
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    invoke-static {v3, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 913
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 906
    :cond_8
    monitor-exit v4

    return v9

    .line 909
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_7

    .line 910
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 909
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    .line 915
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

    .line 928
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 934
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 935
    if-eqz v0, :cond_1

    .line 937
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "directory"

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 939
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 940
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 929
    :cond_0
    return v2

    .line 936
    :cond_1
    monitor-exit v1

    return v2

    .line 940
    :catchall_0
    move-exception v0

    .line 932
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteExtraMediaInfo(J)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 952
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 957
    if-eqz v0, :cond_1

    .line 959
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    const-string/jumbo v2, "media"

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "media_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 961
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 962
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 953
    :cond_0
    return v2

    .line 958
    :cond_1
    monitor-exit v1

    return v2

    .line 962
    :catchall_0
    move-exception v0

    .line 954
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
    .line 974
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 978
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 979
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 981
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 982
    instance-of v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 979
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 975
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 983
    :cond_1
    :try_start_1
    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 985
    :catchall_0
    move-exception v0

    .line 976
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 985
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
    .line 998
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1003
    if-nez v0, :cond_1

    .line 1000
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 999
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1005
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1006
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 1007
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1008
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

    .line 1022
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1026
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 1027
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    .line 1023
    :cond_0
    return-object v1

    .line 1027
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1024
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1039
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1043
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1044
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    .line 1040
    :cond_0
    return-object v1

    .line 1044
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1041
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
    .line 1056
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1060
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1063
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1064
    instance-of v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 1061
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1057
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1065
    :cond_1
    :try_start_1
    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1067
    :catchall_0
    move-exception v0

    .line 1058
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1067
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

    .line 1079
    :try_start_0
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1092
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1093
    if-eqz v1, :cond_2

    .line 1102
    :try_start_1
    invoke-virtual {v1, v0, p1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1103
    if-nez v0, :cond_3

    .line 1109
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1105
    return-wide v4

    .line 1081
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    .line 1083
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insert() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return-wide v4

    .line 1095
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update() - No gallery content provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1096
    return-wide v4

    .line 1104
    :cond_3
    :try_start_3
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 1109
    :try_start_4
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1104
    return-wide v2

    .line 1105
    :catchall_0
    move-exception v0

    .line 1109
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1110
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 1115
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "insert() - Fail to insert"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1116
    return-wide v4
.end method

.method private static invalidateExtraMediaInfo(J)V
    .locals 10

    .prologue
    .line 1124
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1127
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    .line 1131
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-object v7, v0

    .line 1134
    new-instance v9, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v9}, Lcom/oneplus/base/SimpleRef;-><init>()V

    const-string/jumbo v1, "media"

    .line 1135
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "media_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/oneplus/gallery2/media/GalleryDatabase$4;

    invoke-direct {v6, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$4;-><init>(Lcom/oneplus/base/Ref;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v1

    .line 1143
    if-eqz v1, :cond_2

    .line 1147
    :goto_0
    invoke-interface {v9}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1150
    if-eqz v7, :cond_3

    .line 1159
    invoke-virtual {v7, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1124
    :cond_0
    :goto_1
    monitor-exit v8

    .line 1175
    return-void

    .line 1128
    :cond_1
    monitor-exit v8

    return-void

    .line 1145
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalidateExtraMediaInfo() - Fail to query from database"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1152
    :cond_3
    if-eqz v1, :cond_0

    .line 1154
    :try_start_1
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1155
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " added"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1156
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 1161
    :cond_4
    if-nez v1, :cond_5

    .line 1169
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1170
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, " deleted"

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v1, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 1163
    :cond_5
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p0, p1, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1164
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, " updated"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1165
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    invoke-static {v2, v7, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
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
    .line 1181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1182
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onAdded(Ljava/lang/Object;)V

    .line 1181
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1183
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
    .line 1189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onDeleted(Ljava/lang/Object;)V

    .line 1189
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1191
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
    .line 1197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1198
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onUpdated(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1197
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1199
    :cond_0
    return-void
.end method

.method private static onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 1205
    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1206
    return-void
.end method

.method private static onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 1212
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

    .line 1213
    return-void
.end method

.method private static onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    .prologue
    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v6, 0x6

    const/4 v8, 0x0

    .line 1219
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onDatabaseUpgrade() - Upgrade from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    if-lt p1, v6, :cond_0

    move v0, p1

    .line 1239
    :goto_0
    if-eq v0, v6, :cond_2

    .line 1252
    :goto_1
    if-eq v0, v3, :cond_3

    .line 1261
    :goto_2
    if-eq v0, v2, :cond_4

    .line 1266
    :goto_3
    if-eq v0, v1, :cond_5

    .line 1281
    :goto_4
    return-void

    .line 1223
    :cond_0
    if-gtz p1, :cond_1

    :goto_5
    const-string/jumbo v0, "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER,address_locale TEXT,address_latitude REAL,address_longitude REAL,address_country TEXT,address_admin_area TEXT,address_sub_admin_area TEXT,address_locality TEXT,address_sub_locality TEXT,address_feature TEXT,address_address_line_0 TEXT,address_address_line_1 TEXT);"

    .line 1231
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER);"

    .line 1232
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

    .line 1233
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    .line 1234
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE INDEX album_id_index ON album_media(album_id);"

    .line 1235
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE INDEX media_id_index ON media(media_id);"

    .line 1236
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1237
    goto :goto_0

    :cond_1
    const-string/jumbo v0, "DROP TABLE IF EXISTS media"

    .line 1225
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS album"

    .line 1226
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "DROP TABLE IF EXISTS album_media"

    .line 1227
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    const-string/jumbo v0, "ALTER TABLE album ADD date_added INTEGER;"

    .line 1241
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE album ADD date_modified INTEGER;"

    .line 1242
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1245
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "date_added"

    .line 1246
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "date_modified"

    .line 1247
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "date_media_added"

    .line 1248
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "album"

    .line 1249
    invoke-virtual {p0, v4, v0, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v3

    .line 1250
    goto :goto_1

    :cond_3
    const-string/jumbo v0, "ALTER TABLE album ADD date_media_added INTEGER;"

    .line 1254
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1256
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "date_media_added"

    .line 1257
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "album"

    .line 1258
    invoke-virtual {p0, v3, v0, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 1259
    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    .line 1263
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v1

    .line 1264
    goto/16 :goto_3

    :cond_5
    const-string/jumbo v0, "ALTER TABLE media ADD address_locale TEXT;"

    .line 1268
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_latitude REAL;"

    .line 1269
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_longitude REAL;"

    .line 1270
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_country TEXT;"

    .line 1271
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_admin_area TEXT;"

    .line 1272
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_sub_admin_area TEXT;"

    .line 1273
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_locality TEXT;"

    .line 1274
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_sub_locality TEXT;"

    .line 1275
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_feature TEXT;"

    .line 1276
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_address_line_0 TEXT;"

    .line 1277
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE media ADD address_address_line_1 TEXT;"

    .line 1278
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private static onGalleryContentChanged(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1287
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGalleryContentChanged() - URI : "

    invoke-static {v0, v1, p0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1289
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://oneplus.gallery/media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1294
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1301
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->invalidateExtraMediaInfo(J)V

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1298
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onGalleryContentChanged() - Fail to get media ID"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1299
    return-void
.end method

.method private static openDatabase()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1309
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_1

    .line 1310
    :cond_0
    return v8

    .line 1309
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1311
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_DatabaseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1313
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 1315
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "openDatabase() - Start"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1317
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$5;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    const-string/jumbo v5, "gallery.db"

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase$5;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1349
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

    .line 1351
    :try_start_2
    monitor-exit v1

    return v8

    .line 1314
    :cond_2
    monitor-exit v1

    return v8

    .line 1351
    :catch_0
    move-exception v0

    .line 1355
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openDatabase() - Fail to open database"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1356
    monitor-exit v1

    return v9

    :catchall_0
    move-exception v0

    .line 1311
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

    .line 1367
    :try_start_0
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_1

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1386
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1387
    if-eqz v0, :cond_6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1394
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v1

    .line 1396
    :try_start_2
    invoke-interface {p5, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;->onQuery(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1397
    if-nez v1, :cond_7

    .line 1400
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1403
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1370
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1377
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

    .line 1379
    :try_start_5
    invoke-interface {p5, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;->onQuery(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1380
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

    .line 1403
    :catch_0
    move-exception v0

    .line 1407
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "query() - Unhandled error"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1408
    return v9

    .line 1372
    :cond_2
    :try_start_8
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 1373
    return v9

    .line 1380
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

    .line 1389
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query() - No gallery content provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 1390
    return v9

    .line 1397
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

    .line 1400
    :try_start_d
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1401
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 1397
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

    .line 1416
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1418
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1420
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1424
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1428
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "album"

    .line 1434
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$6;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$6;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1450
    if-eqz v0, :cond_3

    .line 1457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1458
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

    .line 1459
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    .line 1460
    monitor-exit v6

    return v11

    .line 1417
    :cond_0
    return v11

    .line 1421
    :cond_1
    monitor-exit v6

    return v11

    .line 1430
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    monitor-exit v6

    return v10

    .line 1452
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    monitor-exit v6

    return v10

    .line 1460
    :catchall_0
    move-exception v0

    .line 1418
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

    .line 1468
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1470
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1472
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1476
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumMediaRelationTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1480
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "album_media"

    .line 1486
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$7;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$7;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1503
    if-eqz v0, :cond_3

    .line 1510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1511
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

    .line 1512
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    .line 1513
    monitor-exit v6

    return v11

    .line 1469
    :cond_0
    return v11

    .line 1473
    :cond_1
    monitor-exit v6

    return v11

    .line 1482
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumMediaRelationTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    monitor-exit v6

    return v10

    .line 1505
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupAlbumMediaRelationTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    monitor-exit v6

    return v10

    .line 1513
    :catchall_0
    move-exception v0

    .line 1470
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

    .line 1521
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1523
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1525
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1529
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraDirectoryInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1533
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "directory"

    .line 1539
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$8;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$8;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1551
    if-eqz v0, :cond_3

    .line 1558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1559
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

    .line 1560
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    .line 1561
    monitor-exit v6

    return v11

    .line 1522
    :cond_0
    return v11

    .line 1526
    :cond_1
    monitor-exit v6

    return v11

    .line 1535
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraDirectoryInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    monitor-exit v6

    return v10

    .line 1553
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraDirectoryInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    monitor-exit v6

    return v10

    .line 1561
    :catchall_0
    move-exception v0

    .line 1523
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

    .line 1569
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1571
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1573
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 1577
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraMediaInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1581
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string/jumbo v0, "media"

    .line 1587
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$9;

    invoke-direct {v5, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$9;-><init>(Landroid/util/LongSparseArray;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    .line 1598
    if-eqz v0, :cond_3

    .line 1605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 1606
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

    .line 1607
    sput-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    .line 1608
    monitor-exit v6

    return v11

    .line 1570
    :cond_0
    return v11

    .line 1574
    :cond_1
    monitor-exit v6

    return v11

    .line 1583
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraMediaInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    monitor-exit v6

    return v10

    .line 1600
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupExtraMediaInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    monitor-exit v6

    return v10

    .line 1608
    :catchall_0
    move-exception v0

    .line 1571
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1620
    :try_start_0
    sget-boolean v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v0, :cond_0

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://oneplus.gallery/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1633
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1634
    if-eqz v1, :cond_2

    .line 1643
    :try_start_1
    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1647
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1643
    return v0

    .line 1622
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1624
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    return v3

    .line 1636
    :cond_2
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update() - No gallery content provider"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    return v3

    .line 1643
    :catchall_0
    move-exception v0

    .line 1647
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 1648
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1653
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update() - Fail to update"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1654
    return v3
.end method

.method public static updateAlbumInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1667
    if-eqz p0, :cond_0

    .line 1671
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v1

    .line 1676
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 1677
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1680
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v0, "_display_name"

    .line 1681
    iget-object v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "date_modified"

    .line 1682
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "date_media_added"

    .line 1683
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1686
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 1687
    if-eqz v0, :cond_2

    const-string/jumbo v6, "album"

    .line 1691
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

    .line 1693
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1694
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1695
    monitor-exit v4

    const/4 v0, 0x1

    return v0

    .line 1668
    :cond_0
    return v9

    .line 1672
    :cond_1
    return v9

    .line 1688
    :cond_2
    monitor-exit v4

    return v9

    .line 1692
    :cond_3
    monitor-exit v4

    return v9

    .line 1695
    :catchall_0
    move-exception v0

    .line 1677
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

    .line 1708
    if-eqz p0, :cond_0

    .line 1712
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v1

    .line 1717
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->directoryId:J

    .line 1718
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1721
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v0, "date_media_added"

    .line 1722
    iget-wide v6, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1725
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 1726
    if-eqz v0, :cond_2

    const-string/jumbo v6, "directory"

    .line 1743
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

    .line 1749
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraDirectoryInfo() - Fail to update"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    monitor-exit v4

    return v10

    .line 1709
    :cond_0
    return v10

    .line 1713
    :cond_1
    return v10

    :cond_2
    const-string/jumbo v0, "_id"

    .line 1728
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "directory"

    .line 1729
    invoke-static {v0, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 1731
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1732
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 1733
    monitor-exit v4

    return v11

    .line 1737
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraDirectoryInfo() - Fail to insert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    monitor-exit v4

    return v10

    .line 1745
    :cond_4
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1746
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1747
    monitor-exit v4

    return v11

    .line 1750
    :catchall_0
    move-exception v0

    .line 1718
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

    .line 1762
    if-eqz p0, :cond_0

    .line 1764
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1766
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    .line 1767
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 1768
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    monitor-enter v4

    .line 1771
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1772
    invoke-virtual {v1, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toContentValues(Landroid/content/ContentValues;)V

    .line 1775
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1776
    if-eqz v0, :cond_2

    const-string/jumbo v6, "media_id"

    .line 1790
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v6, "media"

    .line 1793
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

    .line 1799
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraMediaInfo() - Fail to update"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    monitor-exit v4

    return v10

    .line 1763
    :cond_0
    return v10

    .line 1765
    :cond_1
    return v10

    :cond_2
    const-string/jumbo v0, "media"

    .line 1778
    invoke-static {v0, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    .line 1780
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1781
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 1782
    monitor-exit v4

    return v11

    .line 1786
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExtraMediaInfo() - Fail to insert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    monitor-exit v4

    return v10

    .line 1795
    :cond_4
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1796
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1797
    monitor-exit v4

    return v11

    .line 1800
    :catchall_0
    move-exception v0

    .line 1768
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
