.class public final Lcom/oneplus/gallery2/media/GalleryDatabase;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;,
        Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
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
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    new-array v9, v11, [Ljava/lang/String;

    const-string v10, "album_id"

    aput-object v10, v9, v7

    const-string v10, "media_id"

    aput-object v10, v9, v8

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 75
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "_id"

    aput-object v10, v9, v7

    const-string v10, "_display_name"

    aput-object v10, v9, v8

    const-string v10, "date_added"

    aput-object v10, v9, v11

    const-string v10, "date_modified"

    aput-object v10, v9, v12

    const-string v10, "date_media_added"

    aput-object v10, v9, v13

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

    .line 83
    new-array v9, v11, [Ljava/lang/String;

    const-string v10, "_id"

    aput-object v10, v9, v7

    const-string v10, "date_media_added"

    aput-object v10, v9, v8

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

    .line 88
    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "media_id"

    aput-object v10, v9, v7

    const-string v10, "oneplus_flags"

    aput-object v10, v9, v8

    const-string v10, "address_locale"

    aput-object v10, v9, v11

    const-string v10, "address_latitude"

    aput-object v10, v9, v12

    const-string v10, "address_longitude"

    aput-object v10, v9, v13

    const/4 v10, 0x5

    const-string v11, "address_country"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "address_admin_area"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "address_sub_admin_area"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "address_locality"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "address_sub_locality"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "address_feature"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "address_address_line_0"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "address_address_line_1"

    aput-object v11, v9, v10

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 200
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    .line 201
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    .line 203
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    .line 204
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    .line 207
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_DatabaseLock:Ljava/lang/Object;

    .line 208
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    .line 209
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    .line 211
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    .line 212
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sput-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    .line 512
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 513
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 515
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-class v9, Lcom/oneplus/gallery2/media/GalleryDatabase;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, "tag":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v3, v9, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .local v3, "metadata":Landroid/os/Bundle;
    :goto_0
    if-eqz v3, :cond_0

    const-string v9, "is_gallery_db_server"

    invoke-virtual {v3, v9, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    :cond_0
    sput-boolean v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    .line 526
    sget-boolean v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v7, :cond_2

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "(Server)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 529
    const-string v7, "Access database as server"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_1
    sput-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    .line 536
    sget-boolean v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-nez v7, :cond_1

    .line 538
    new-instance v4, Lcom/oneplus/gallery2/media/GalleryDatabase$1;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$1;-><init>(Landroid/os/Handler;)V

    .line 556
    .local v4, "observer":Landroid/database/ContentObserver;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 557
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v7, "content://oneplus.gallery/media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 559
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v4    # "observer":Landroid/database/ContentObserver;
    :cond_1
    return-void

    .line 520
    .end local v3    # "metadata":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 522
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v9, "Fail to get application info"

    invoke-static {v6, v9, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    const/4 v3, 0x0

    .restart local v3    # "metadata":Landroid/os/Bundle;
    goto :goto_0

    .line 532
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    const-string v7, "Access database as client"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onGalleryContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$800(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static addAlbumInfo(Ljava/lang/String;)Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 597
    :goto_0
    return-object v0

    .line 576
    :cond_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 579
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;-><init>()V

    .line 580
    .local v0, "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 581
    .local v1, "dbValues":Landroid/content/ContentValues;
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

    .line 585
    const-string v4, "_display_name"

    iget-object v5, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v4, "date_added"

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->creationTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 587
    const-string v4, "date_modified"

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 588
    const-string v4, "date_media_added"

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    const-string v4, "album"

    invoke-static {v4, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 592
    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 593
    monitor-exit v3

    move-object v0, v2

    goto :goto_0

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
    monitor-exit v3

    goto :goto_0

    .line 598
    .end local v0    # "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .end local v1    # "dbValues":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static addAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z
    .locals 12
    .param p0, "relation"    # Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 609
    if-nez p0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v5

    .line 611
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v3

    .line 614
    .local v3, "newRelation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    iget-wide v0, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    .line 615
    .local v0, "albumId":J
    sget-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 617
    :try_start_0
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 618
    .local v4, "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 619
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 620
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    const/4 v8, 0x2

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 621
    .local v2, "dbValues":Landroid/content/ContentValues;
    const-string v8, "album_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 622
    const-string v8, "media_id"

    iget-wide v10, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    const-string v8, "album_media"

    invoke-static {v8, v2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 625
    if-eqz v4, :cond_3

    .line 626
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 627
    :cond_3
    monitor-exit v7

    goto :goto_0

    .line 637
    .end local v2    # "dbValues":Landroid/content/ContentValues;
    .end local v4    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 629
    .restart local v2    # "dbValues":Landroid/content/ContentValues;
    .restart local v4    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_4
    if-nez v4, :cond_5

    .line 631
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 632
    .restart local v4    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 635
    :cond_5
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 636
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto :goto_0
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
    .local p0, "callback":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;>;"
    const/4 v0, 0x0

    .line 648
    if-nez p0, :cond_0

    .line 664
    :goto_0
    return-object v0

    .line 650
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 652
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$2;

    const-string v1, "ExtraDirectoryInfoChangeCallback"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$2;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V

    .line 663
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;>;>;"
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    monitor-exit v2

    goto :goto_0

    .line 665
    .end local v0    # "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z
    .locals 8
    .param p0, "mediaInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .prologue
    const/4 v2, 0x0

    .line 676
    if-nez p0, :cond_1

    .line 678
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v4, "addExtraMediaInfo() - No media info to add"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    :goto_0
    return v2

    .line 681
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v3

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v0

    .line 687
    .local v0, "cloneMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 688
    monitor-exit v3

    goto :goto_0

    .line 706
    .end local v0    # "cloneMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 691
    .restart local v0    # "cloneMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 692
    .local v1, "dbValues":Landroid/content/ContentValues;
    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toContentValues(Landroid/content/ContentValues;)V

    .line 695
    const-string v4, "media"

    invoke-static {v4, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 697
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 698
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v2, p0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 699
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 703
    :cond_3
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "addExtraMediaInfo() - Fail to insert"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
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
    .local p0, "callback":Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;, "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    const/4 v0, 0x0

    .line 717
    if-nez p0, :cond_0

    .line 733
    :goto_0
    return-object v0

    .line 719
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 721
    :try_start_0
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$3;

    const-string v1, "ExtraMediaInfoChangeCallback"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase$3;-><init>(Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;Landroid/os/Handler;)V

    .line 732
    .local v0, "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;>;"
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    monitor-exit v2

    goto :goto_0

    .line 734
    .end local v0    # "handle":Lcom/oneplus/base/CallbackHandle;, "Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createExtraMediaInfoUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "mediaId"    # J

    .prologue
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://oneplus.gallery/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 756
    :try_start_0
    sget-boolean v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v5, :cond_2

    .line 758
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v5

    if-nez v5, :cond_0

    .line 760
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "delete() - Fail to open database"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :goto_0
    return v4

    .line 763
    :cond_0
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 768
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://oneplus.gallery/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 769
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 770
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_3

    .line 772
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "delete() - No gallery content provider"

    invoke-static {v3, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "delete() - Fail to delete"

    invoke-static {v3, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 779
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-virtual {v0, v2, p1, p2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-lez v5, :cond_4

    .line 783
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v4

    .line 779
    goto :goto_2

    .line 783
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public static deleteAlbumInfo(J)Z
    .locals 6
    .param p0, "albumId"    # J

    .prologue
    const/4 v1, 0x0

    .line 802
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 812
    :goto_0
    return v1

    .line 804
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 806
    :try_start_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 807
    .local v0, "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    if-nez v0, :cond_1

    .line 808
    monitor-exit v2

    goto :goto_0

    .line 813
    .end local v0    # "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 809
    .restart local v0    # "albumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 810
    const-string v1, "album"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 811
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 812
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static deleteAlbumMediaRelation(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;)Z
    .locals 8
    .param p0, "relation"    # Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .prologue
    const/4 v2, 0x0

    .line 824
    if-nez p0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v2

    .line 826
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v0

    .line 829
    .local v0, "oldRelation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 831
    :try_start_0
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 832
    .local v1, "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 833
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 837
    .end local v1    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 834
    .restart local v1    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_3
    :try_start_1
    const-string v2, "album_media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->albumId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "media_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->mediaId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 835
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 836
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static deleteAlbumMediaRelationsByAlbumId(J)Z
    .locals 8
    .param p0, "albumId"    # J

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 864
    :goto_0
    return v3

    .line 850
    :cond_0
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 852
    :try_start_0
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 853
    .local v2, "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    if-nez v2, :cond_1

    .line 854
    monitor-exit v4

    goto :goto_0

    .line 865
    .end local v2    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 855
    .restart local v2    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 857
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 858
    monitor-exit v4

    goto :goto_0

    .line 860
    :cond_2
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 861
    const-string v3, "album_media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 862
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 863
    .local v1, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-static {v3, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 864
    .end local v1    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    :cond_3
    const/4 v3, 0x1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static deleteAlbumMediaRelationsByMediaId(J)Z
    .locals 18
    .param p0, "mediaId"    # J

    .prologue
    .line 877
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumMediaRelationTable()Z

    move-result v12

    if-nez v12, :cond_0

    .line 878
    const/4 v12, 0x0

    .line 915
    :goto_0
    return v12

    .line 879
    :cond_0
    sget-object v13, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v13

    .line 881
    const/4 v6, 0x0

    .line 882
    .local v6, "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    const/4 v4, 0x0

    .line 883
    .local v4, "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v12, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    add-int/lit8 v8, v12, -0x1

    .local v8, "i":I
    move-object v5, v4

    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v5, "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v7, v6

    .end local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .local v7, "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :goto_1
    if-ltz v8, :cond_1

    .line 885
    :try_start_1
    sget-object v12, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 886
    .local v2, "albumId":J
    sget-object v12, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 887
    .local v9, "o":Ljava/lang/Object;
    instance-of v12, v9, Ljava/util/Set;

    if-eqz v12, :cond_8

    .line 889
    new-instance v10, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-wide/from16 v0, p0

    invoke-direct {v10, v2, v3, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;-><init>(JJ)V

    .line 890
    .local v10, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    move-object v0, v9

    check-cast v0, Ljava/util/Set;

    move-object v11, v0

    .line 891
    .local v11, "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-interface {v11, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 893
    if-nez v7, :cond_7

    .line 894
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    .end local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :goto_2
    :try_start_2
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 898
    if-nez v5, :cond_5

    .line 899
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 900
    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 883
    .end local v10    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .end local v11    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :goto_4
    add-int/lit8 v8, v8, -0x1

    move-object v5, v4

    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v7, v6

    .end local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    goto :goto_1

    .line 905
    .end local v2    # "albumId":J
    .end local v9    # "o":Ljava/lang/Object;
    :cond_1
    if-nez v7, :cond_2

    .line 906
    const/4 v12, 0x0

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v12

    move-object v4, v5

    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v6, v7

    .end local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .end local v8    # "i":I
    .restart local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :goto_5
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v12

    .line 907
    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v8    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 909
    :try_start_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v8, v12, -0x1

    :goto_6
    if-ltz v8, :cond_3

    .line 910
    sget-object v14, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 909
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 912
    :cond_3
    const-string v12, "album_media"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "media_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v12, v14, v15}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 913
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v8, v12, -0x1

    :goto_7
    if-ltz v8, :cond_4

    .line 914
    sget-object v12, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationChangeCBHandles:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 913
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 915
    :cond_4
    const/4 v12, 0x1

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 916
    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .end local v8    # "i":I
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :catchall_1
    move-exception v12

    goto :goto_5

    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2    # "albumId":J
    .restart local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "i":I
    .restart local v9    # "o":Ljava/lang/Object;
    .restart local v10    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .restart local v11    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_5

    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    move-object v4, v5

    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_3

    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    move-object v4, v5

    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_4

    .end local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_7
    move-object v6, v7

    .end local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    goto/16 :goto_2

    .end local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .end local v10    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .end local v11    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_8
    move-object v4, v5

    .end local v5    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "deletedAlbumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v6, v7

    .end local v7    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v6    # "deletedRelations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    goto :goto_4
.end method

.method public static deleteExtraDirectoryInfo(J)Z
    .locals 6
    .param p0, "directoryId"    # J

    .prologue
    const/4 v1, 0x0

    .line 928
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    :goto_0
    return v1

    .line 932
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 934
    :try_start_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 935
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    if-nez v0, :cond_1

    .line 936
    monitor-exit v2

    goto :goto_0

    .line 941
    .end local v0    # "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 937
    .restart local v0    # "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 938
    const-string v1, "directory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 939
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 940
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static deleteExtraMediaInfo(J)Z
    .locals 6
    .param p0, "mediaId"    # J

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    :goto_0
    return v1

    .line 954
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 956
    :try_start_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 957
    .local v0, "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-nez v0, :cond_1

    .line 958
    monitor-exit v2

    goto :goto_0

    .line 963
    .end local v0    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 959
    .restart local v0    # "mediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 960
    const-string v1, "media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/oneplus/gallery2/media/GalleryDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 961
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 962
    const/4 v1, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
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

    move-result v3

    if-nez v3, :cond_0

    .line 975
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 985
    .local v0, "i":I
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    :goto_0
    return-object v1

    .line 976
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    :cond_0
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 978
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 981
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 982
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    if-eqz v3, :cond_1

    .line 983
    check-cast v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 985
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 986
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getAlbumMediaRelationsByAlbumId(J)Ljava/util/List;
    .locals 6
    .param p0, "albumId"    # J
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

    move-result v4

    if-nez v4, :cond_0

    .line 999
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1011
    :goto_0
    return-object v1

    .line 1000
    :cond_0
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1002
    :try_start_0
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1003
    .local v3, "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    if-eqz v3, :cond_2

    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1006
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    .line 1007
    .local v2, "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1010
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .end local v2    # "relation":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;
    .end local v3    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1008
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    .restart local v3    # "relationSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_1
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 1010
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;"
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public static getExtraDirectoryInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    .locals 4
    .param p0, "directoryId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1022
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    :goto_0
    return-object v1

    .line 1024
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1026
    :try_start_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 1027
    .local v0, "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v1

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 1028
    .end local v0    # "dirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExtraMediaInfo(J)Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .locals 4
    .param p0, "mediaId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1039
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1044
    :goto_0
    return-object v1

    .line 1041
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1043
    :try_start_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1044
    .local v0, "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 1045
    .end local v0    # "extraInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    move-result v3

    if-nez v3, :cond_0

    .line 1057
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1067
    .local v0, "i":I
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :goto_0
    return-object v1

    .line 1058
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :cond_0
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1060
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1063
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1064
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    if-eqz v3, :cond_1

    .line 1065
    check-cast v2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1067
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 1068
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 8
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v4, -0x1

    .line 1079
    :try_start_0
    sget-boolean v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v3, :cond_1

    .line 1081
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1083
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v6, "insert() - Fail to open database"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :goto_0
    return-wide v4

    .line 1086
    :cond_0
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_0

    .line 1091
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://oneplus.gallery/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1092
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1093
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_2

    .line 1095
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v6, "update() - No gallery content provider"

    invoke-static {v3, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1115
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v6, "insert() - Fail to insert"

    invoke-static {v3, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1102
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1103
    if-eqz v2, :cond_3

    .line 1104
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1109
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move-wide v4, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private static invalidateExtraMediaInfo(J)V
    .locals 10
    .param p0, "mediaId"    # J

    .prologue
    .line 1124
    sget-object v9, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1127
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1128
    monitor-exit v9

    .line 1175
    :goto_0
    return-void

    .line 1131
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1134
    .local v6, "currentMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    new-instance v8, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v8}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1135
    .local v8, "newMediaInfoRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    const-string v0, "media"

    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$4;

    invoke-direct {v5, v8}, Lcom/oneplus/gallery2/media/GalleryDatabase$4;-><init>(Lcom/oneplus/base/Ref;)V

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1145
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "invalidateExtraMediaInfo() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_1
    invoke-interface {v8}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1150
    .local v7, "newMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-nez v6, :cond_3

    .line 1152
    if-eqz v7, :cond_2

    .line 1154
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1155
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " added"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1156
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 1174
    :cond_2
    :goto_1
    monitor-exit v9

    goto :goto_0

    .end local v6    # "currentMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .end local v7    # "newMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .end local v8    # "newMediaInfoRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1159
    .restart local v6    # "currentMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .restart local v7    # "newMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .restart local v8    # "newMediaInfoRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v6, v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1161
    if-eqz v7, :cond_4

    .line 1163
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1164
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " updated"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1165
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-virtual {v7}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1169
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1170
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "invalidateExtraMediaInfo() - Extra info of "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " deleted"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1171
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyDeleted(Ljava/util/List;Ljava/lang/Object;)V
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
    .local p0, "callbackHandles":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;>;>;"
    .local p1, "value":Ljava/lang/Object;, "TTValue;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1182
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onAdded(Ljava/lang/Object;)V

    .line 1181
    add-int/lit8 v0, v0, -0x1

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
    .local p0, "callbackHandles":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;>;>;"
    .local p1, "value":Ljava/lang/Object;, "TTValue;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1190
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onDeleted(Ljava/lang/Object;)V

    .line 1189
    add-int/lit8 v0, v0, -0x1

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
    .local p0, "callbackHandles":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/CallbackHandle<Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback<TTValue;>;>;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p2, "newValue":Ljava/lang/Object;, "TTValue;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1198
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v1}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;->onUpdated(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1197
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1199
    :cond_0
    return-void
.end method

.method private static onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1205
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1206
    return-void
.end method

.method private static onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 1212
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDatabaseDowngrade() - DB downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

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
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 1219
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDatabaseUpgrade() - Upgrade from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    if-ge p1, v9, :cond_1

    .line 1223
    if-lez p1, :cond_0

    .line 1225
    const-string v1, "DROP TABLE IF EXISTS media"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1226
    const-string v1, "DROP TABLE IF EXISTS album"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v1, "DROP TABLE IF EXISTS album_media"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1231
    :cond_0
    const-string v1, "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER,address_locale TEXT,address_latitude REAL,address_longitude REAL,address_country TEXT,address_admin_area TEXT,address_sub_admin_area TEXT,address_locality TEXT,address_sub_locality TEXT,address_feature TEXT,address_address_line_0 TEXT,address_address_line_1 TEXT);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1232
    const-string v1, "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1233
    const-string v1, "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1234
    const-string v1, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1235
    const-string v1, "CREATE INDEX album_id_index ON album_media(album_id);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1236
    const-string v1, "CREATE INDEX media_id_index ON media(media_id);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1237
    const/16 p1, 0xa

    .line 1239
    :cond_1
    if-ne p1, v9, :cond_2

    .line 1241
    const-string v1, "ALTER TABLE album ADD date_added INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1242
    const-string v1, "ALTER TABLE album ADD date_modified INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1245
    .local v2, "dataAddedTime":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1246
    .local v0, "cvs":Landroid/content/ContentValues;
    const-string v1, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    const-string v1, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1248
    const-string v1, "date_media_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1249
    const-string v1, "album"

    invoke-virtual {p0, v1, v0, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1250
    const/4 p1, 0x7

    .line 1252
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v2    # "dataAddedTime":J
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 1254
    const-string v1, "ALTER TABLE album ADD date_media_added INTEGER;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1256
    .local v4, "time":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1257
    .restart local v0    # "cvs":Landroid/content/ContentValues;
    const-string v1, "date_media_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1258
    const-string v1, "album"

    invoke-virtual {p0, v1, v0, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1259
    const/16 p1, 0x8

    .line 1261
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v4    # "time":J
    :cond_3
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    .line 1263
    const-string v1, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1264
    const/16 p1, 0x9

    .line 1266
    :cond_4
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    .line 1268
    const-string v1, "ALTER TABLE media ADD address_locale TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1269
    const-string v1, "ALTER TABLE media ADD address_latitude REAL;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1270
    const-string v1, "ALTER TABLE media ADD address_longitude REAL;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1271
    const-string v1, "ALTER TABLE media ADD address_country TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1272
    const-string v1, "ALTER TABLE media ADD address_admin_area TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1273
    const-string v1, "ALTER TABLE media ADD address_sub_admin_area TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    const-string v1, "ALTER TABLE media ADD address_locality TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    const-string v1, "ALTER TABLE media ADD address_sub_locality TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1276
    const-string v1, "ALTER TABLE media ADD address_feature TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1277
    const-string v1, "ALTER TABLE media ADD address_address_line_0 TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1278
    const-string v1, "ALTER TABLE media ADD address_address_line_1 TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    const/16 p1, 0xa

    .line 1281
    :cond_5
    return-void
.end method

.method private static onGalleryContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1287
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v4, "onGalleryContentChanged() - URI : "

    invoke-static {v1, v4, p0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1289
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "content://oneplus.gallery/media/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    :try_start_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1301
    .local v2, "mediaId":J
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->invalidateExtraMediaInfo(J)V

    .line 1303
    .end local v2    # "mediaId":J
    :cond_0
    :goto_0
    return-void

    .line 1296
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v4, "onGalleryContentChanged() - Fail to get media ID"

    invoke-static {v1, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static openDatabase()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 1309
    sget-boolean v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_1

    .line 1356
    .local v0, "dbOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    .local v2, "time":J
    :cond_0
    :goto_0
    return v4

    .line 1311
    .end local v0    # "dbOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    .end local v2    # "time":J
    :cond_1
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_DatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1313
    :try_start_0
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_2

    .line 1314
    monitor-exit v5

    goto :goto_0

    .line 1358
    .restart local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1315
    .end local v2    # "time":J
    :cond_2
    :try_start_1
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v7, "openDatabase() - Start"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1317
    .restart local v2    # "time":J
    new-instance v0, Lcom/oneplus/gallery2/media/GalleryDatabase$5;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    const-string v7, "gallery.db"

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$5;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    .restart local v0    # "dbOpenHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    sput-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    .line 1348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 1349
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openDatabase() - Take "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to open as writable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1351
    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v1

    .line 1355
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v6, "openDatabase() - Fail to open database"

    invoke-static {v4, v6, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1356
    const/4 v4, 0x0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z
    .locals 12
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;

    .prologue
    .line 1367
    :try_start_0
    sget-boolean v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v3, :cond_5

    .line 1370
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1372
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v4, "query() - Fail to open database"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/4 v3, 0x0

    .line 1408
    :goto_0
    return v3

    .line 1377
    :cond_0
    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1379
    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;->onQuery(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1380
    if-eqz v9, :cond_1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1403
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1380
    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1405
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v10

    .line 1407
    .local v10, "ex":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v4, "query() - Unhandled error"

    invoke-static {v3, v4, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1408
    const/4 v3, 0x0

    goto :goto_0

    .line 1380
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1377
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1380
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_3

    if-eqz v4, :cond_4

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_2
    :try_start_7
    throw v3

    :catch_3
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1385
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://oneplus.gallery/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1386
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 1387
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_6

    .line 1389
    sget-object v3, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v4, "query() - No gallery content provider"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 1390
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    .line 1394
    :try_start_8
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v9

    .restart local v9    # "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1396
    :try_start_9
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;->onQuery(Landroid/database/Cursor;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1397
    if-eqz v9, :cond_7

    if-eqz v4, :cond_8

    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1400
    :cond_7
    :goto_3
    :try_start_b
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    .line 1397
    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    .line 1400
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    :try_start_d
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    throw v3
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    .line 1397
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_8
    :try_start_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    .line 1394
    :catch_5
    move-exception v4

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1397
    :catchall_2
    move-exception v3

    if-eqz v9, :cond_9

    if-eqz v4, :cond_a

    :try_start_10
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_9
    :goto_4
    :try_start_11
    throw v3

    :catch_6
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_4
.end method

.method private static setupAlbumInfoTable()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1416
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    move v0, v7

    .line 1460
    .local v6, "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    :goto_0
    return v0

    .line 1418
    .end local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    :cond_0
    sget-object v11, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1420
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1421
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1424
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupAlbumInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 1428
    .restart local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;>;"
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1430
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupAlbumInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1433
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1434
    .local v8, "time":J
    const-string v0, "album"

    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$6;

    invoke-direct {v5, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase$6;-><init>(Landroid/util/LongSparseArray;)V

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1452
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupAlbumInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1457
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v8, v0, v8

    .line 1458
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupAlbumInfoTable() - Take "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to setup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    sput-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    .line 1460
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1461
    .end local v8    # "time":J
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupAlbumMediaRelationTable()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1468
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    move v0, v7

    .line 1513
    .local v6, "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;>;"
    :goto_0
    return v0

    .line 1470
    .end local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;>;"
    :cond_0
    sget-object v11, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1472
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1473
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1476
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupAlbumMediaRelationTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 1480
    .restart local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/Set<Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumMediaRelation;>;>;"
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1482
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupAlbumMediaRelationTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1485
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1486
    .local v8, "time":J
    const-string v0, "album_media"

    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$7;

    invoke-direct {v5, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase$7;-><init>(Landroid/util/LongSparseArray;)V

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1505
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupAlbumMediaRelationTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1510
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v8, v0, v8

    .line 1511
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupAlbumMediaRelationTable() - Take "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to setup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    sput-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumMediaRelationTable:Landroid/util/LongSparseArray;

    .line 1513
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1514
    .end local v8    # "time":J
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupExtraDirectoryInfoTable()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1521
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    move v0, v7

    .line 1561
    .local v6, "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;>;"
    :goto_0
    return v0

    .line 1523
    .end local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;>;"
    :cond_0
    sget-object v11, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1525
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1526
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1529
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupExtraDirectoryInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 1533
    .restart local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;>;"
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1535
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupExtraDirectoryInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1538
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1539
    .local v8, "time":J
    const-string v0, "directory"

    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$8;

    invoke-direct {v5, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase$8;-><init>(Landroid/util/LongSparseArray;)V

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1553
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupExtraDirectoryInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1558
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v8, v0, v8

    .line 1559
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupExtraDirectoryInfoTable() - Take "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to setup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    sput-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    .line 1561
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1562
    .end local v8    # "time":J
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setupExtraMediaInfoTable()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1569
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    move v0, v7

    .line 1608
    .local v6, "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :goto_0
    return v0

    .line 1571
    .end local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    :cond_0
    sget-object v11, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1573
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1574
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1577
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupExtraMediaInfoTable() - Start"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 1581
    .restart local v6    # "table":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;>;"
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1583
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupExtraMediaInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1586
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1587
    .local v8, "time":J
    const-string v0, "media"

    sget-object v1, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/gallery2/media/GalleryDatabase$9;

    invoke-direct {v5, v6}, Lcom/oneplus/gallery2/media/GalleryDatabase$9;-><init>(Landroid/util/LongSparseArray;)V

    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery2/media/GalleryDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/GalleryDatabase$QueryCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1600
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v1, "setupExtraMediaInfoTable() - Fail to query from database"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    monitor-exit v11

    move v0, v10

    goto :goto_0

    .line 1605
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v8, v0, v8

    .line 1606
    sget-object v0, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupExtraMediaInfoTable() - Take "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to setup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    sput-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    .line 1608
    monitor-exit v11

    move v0, v7

    goto :goto_0

    .line 1609
    .end local v8    # "time":J
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1620
    :try_start_0
    sget-boolean v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->IS_SERVER_MODE:Z

    if-eqz v4, :cond_1

    .line 1622
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->openDatabase()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1624
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "update() - Fail to open database"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :goto_0
    return v3

    .line 1627
    :cond_0
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1632
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://oneplus.gallery/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1633
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1634
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_2

    .line 1636
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "update() - No gallery content provider"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1651
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1653
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v4, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v5, "update() - Fail to update"

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1643
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "client":Landroid/content/ContentProviderClient;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1647
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public static updateAlbumInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)Z
    .locals 10
    .param p0, "albumInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .prologue
    const/4 v5, 0x0

    .line 1667
    if-nez p0, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return v5

    .line 1671
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupAlbumInfoTable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1675
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v3

    .line 1676
    .local v3, "newAlbumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    iget-wide v0, v3, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 1677
    .local v0, "albumId":J
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1680
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v7, 0x3

    invoke-direct {v2, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1681
    .local v2, "dbValues":Landroid/content/ContentValues;
    const-string v7, "_display_name"

    iget-object v8, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const-string v7, "date_modified"

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastModifiedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1683
    const-string v7, "date_media_added"

    iget-wide v8, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->lastMediaAddedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1686
    sget-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 1687
    .local v4, "oldAlbumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    if-nez v4, :cond_2

    .line 1688
    monitor-exit v6

    goto :goto_0

    .line 1696
    .end local v2    # "dbValues":Landroid/content/ContentValues;
    .end local v4    # "oldAlbumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1691
    .restart local v2    # "dbValues":Landroid/content/ContentValues;
    .restart local v4    # "oldAlbumInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :cond_2
    :try_start_1
    const-string v7, "album"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v2, v8, v9}, Lcom/oneplus/gallery2/media/GalleryDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 1692
    monitor-exit v6

    goto :goto_0

    .line 1693
    :cond_3
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1694
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_AlbumInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v5, v4, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1695
    const/4 v5, 0x1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static updateExtraDirectoryInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)Z
    .locals 12
    .param p0, "dirInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1708
    if-nez p0, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return v5

    .line 1712
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraDirectoryInfoTable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    move-result-object v1

    .line 1717
    .local v1, "newDirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->directoryId:J

    .line 1718
    .local v2, "dirId":J
    sget-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1721
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v8, 0x2

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1722
    .local v0, "dbValues":Landroid/content/ContentValues;
    const-string v8, "date_media_added"

    iget-wide v10, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1725
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    .line 1726
    .local v4, "oldDirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    if-nez v4, :cond_3

    .line 1728
    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1729
    const-string v8, "directory"

    invoke-static {v8, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1731
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1732
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v5, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 1733
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 1737
    :cond_2
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v8, "updateExtraDirectoryInfo() - Fail to insert"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    monitor-exit v7

    goto :goto_0

    .line 1751
    .end local v0    # "dbValues":Landroid/content/ContentValues;
    .end local v4    # "oldDirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1743
    .restart local v0    # "dbValues":Landroid/content/ContentValues;
    .restart local v4    # "oldDirInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;
    :cond_3
    :try_start_1
    const-string v8, "directory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v0, v9, v10}, Lcom/oneplus/gallery2/media/GalleryDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 1745
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1746
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraDirectoryInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v5, v4, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1747
    monitor-exit v7

    move v5, v6

    goto/16 :goto_0

    .line 1749
    :cond_4
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v8, "updateExtraDirectoryInfo() - Fail to update"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static updateExtraMediaInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)Z
    .locals 12
    .param p0, "mediaInfo"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1762
    if-nez p0, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return v5

    .line 1764
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/media/GalleryDatabase;->setupExtraMediaInfoTable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1766
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    move-result-object v1

    .line 1767
    .local v1, "newMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    .line 1768
    .local v2, "mediaId":J
    sget-object v7, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    monitor-enter v7

    .line 1771
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    sget-object v8, Lcom/oneplus/gallery2/media/GalleryDatabase;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    array-length v8, v8

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1772
    .local v0, "dbValues":Landroid/content/ContentValues;
    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->toContentValues(Landroid/content/ContentValues;)V

    .line 1775
    sget-object v8, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .line 1776
    .local v4, "oldMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    if-nez v4, :cond_3

    .line 1778
    const-string v8, "media"

    invoke-static {v8, v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 1780
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1781
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v5, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyAdded(Ljava/util/List;Ljava/lang/Object;)V

    .line 1782
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 1786
    :cond_2
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v8, "updateExtraMediaInfo() - Fail to insert"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    monitor-exit v7

    goto :goto_0

    .line 1801
    .end local v0    # "dbValues":Landroid/content/ContentValues;
    .end local v4    # "oldMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1790
    .restart local v0    # "dbValues":Landroid/content/ContentValues;
    .restart local v4    # "oldMediaInfo":Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    :cond_3
    :try_start_1
    const-string v8, "media_id"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1793
    const-string v8, "media"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "media_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v0, v9, v10}, Lcom/oneplus/gallery2/media/GalleryDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 1795
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoTable:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1796
    sget-object v5, Lcom/oneplus/gallery2/media/GalleryDatabase;->m_ExtraMediaInfoChangeCBHandles:Ljava/util/List;

    invoke-static {v5, v4, v1}, Lcom/oneplus/gallery2/media/GalleryDatabase;->notifyUpdated(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1797
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 1799
    :cond_4
    sget-object v6, Lcom/oneplus/gallery2/media/GalleryDatabase;->TAG:Ljava/lang/String;

    const-string v8, "updateExtraMediaInfo() - Fail to update"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
