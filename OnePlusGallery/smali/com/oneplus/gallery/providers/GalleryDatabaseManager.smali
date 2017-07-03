.class public Lcom/oneplus/gallery/providers/GalleryDatabaseManager;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;,
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;,
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;,
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;,
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;,
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;,
        Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;
    }
.end annotation


# static fields
.field private static final ALBUM:I = 0x12c

.field private static final ALBUM_ID:I = 0x12d

.field private static final ALBUM_MEDIA:I = 0x190

.field private static final AUTHORITY:Ljava/lang/String; = "oneplus.gallery"

.field private static final COLUMN_ALBUM_ID:Ljava/lang/String; = "album_id"

.field private static final COLUMN_DATE_ADDED:Ljava/lang/String; = "date_added"

.field private static final COLUMN_DATE_MEDIA_ADDED:Ljava/lang/String; = "date_media_added"

.field private static final COLUMN_DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field private static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_MEDIA_ID:Ljava/lang/String; = "media_id"

.field private static final COLUMN_ONEPLUS_FLAGS:Ljava/lang/String; = "oneplus_flags"

.field private static final CONTENT_ALBUM:Ljava/lang/String; = "album"

.field private static final CONTENT_ALBUM_MEDIA:Ljava/lang/String; = "album_media"

.field private static final CONTENT_MEDIA:Ljava/lang/String; = "media"

.field private static final CONTENT_RECYCLED_MEDIA:Ljava/lang/String; = "recycled_media"

.field private static final DATABASE_NAME:Ljava/lang/String; = "gallery.db"

.field private static final DEBUG_LOG:Z = true

.field private static final INDEX_ALBUM_ID:Ljava/lang/String; = "album_id_index"

.field private static final INDEX_MEDIA_ID:Ljava/lang/String; = "media_id_index"

.field private static final MEDIA:I = 0x64

.field private static final MEDIA_ID:I = 0x65

.field private static final RECYCLED_MEDIA:I = 0x1f4

.field private static final SELECTION_ALBUM_ID:Ljava/lang/String; = "album_id=?"

.field private static final SELECTION_DIRECTORY_ID:Ljava/lang/String; = "_id=?"

.field private static final SELECTION_ID:Ljava/lang/String; = "_id=?"

.field private static final SELECTION_MEDIA_ID:Ljava/lang/String; = "media_id=?"

.field private static final SELECTION_WINDOW_SIZE:I = 0x32

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_DATE_ADDED:Ljava/lang/String; = "ALTER TABLE album ADD date_added INTEGER;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_DATE_MEDIA_ADDED:Ljava/lang/String; = "ALTER TABLE album ADD date_media_added INTEGER;"

.field private static final SQL_ALTER_TABLE_ADD_COLUMN_DATE_MODIFIED:Ljava/lang/String; = "ALTER TABLE album ADD date_modified INTEGER;"

.field private static final SQL_CREATE_INDEX_ALBUM_ID:Ljava/lang/String; = "CREATE INDEX album_id_index ON album_media(album_id);"

.field private static final SQL_CREATE_INDEX_MEDIA_ID:Ljava/lang/String; = "CREATE INDEX media_id_index ON media(media_id);"

.field private static final SQL_CREATE_TABLE_ALBUM:Ljava/lang/String; = "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER);"

.field private static final SQL_CREATE_TABLE_ALBUM_MEDIA:Ljava/lang/String; = "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

.field private static final SQL_CREATE_TABLE_DIRECTORY:Ljava/lang/String; = "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

.field private static final SQL_CREATE_TABLE_MEDIA:Ljava/lang/String; = "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER);"

.field private static final SYNC_ALBUM_INFOS:Ljava/lang/Object;

.field private static final SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

.field private static final SYNC_EXTRA_DIRECTORY_INFOS:Ljava/lang/Object;

.field private static final SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

.field private static final TABLE_ALBUM:Ljava/lang/String; = "album"

.field private static final TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_ALBUM_MEDIA:Ljava/lang/String; = "album_media"

.field private static final TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_DIRECTORY:Ljava/lang/String; = "directory"

.field private static final TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_MEDIA:Ljava/lang/String; = "media"

.field private static final TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VERSION_DATABASE:I = 0x9

.field private static m_AlbumChangedListenerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_AlbumInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_AlbumMediaChangedListenerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_AlbumMediaInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_AlbumMediaInfosByAlbumId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DatabaseHelper:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;

.field private static m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_ExtraDirectoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_ExtraMediaChangedListenerHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_ExtraMediaInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const-class v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_INFOS:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_DIRECTORY_INFOS:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "media_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_display_name"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_media_added"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_media_added"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "media_id"

    aput-object v1, v0, v3

    const-string v1, "oneplus_flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 140
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/album"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/album/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/media"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/media/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/album_media"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "oneplus.gallery"

    const-string v2, "/recycled_media"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addAlbumChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    if-nez v1, :cond_0

    .line 495
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    .line 496
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-direct {v0, v1, p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;-><init>(Ljava/util/Collection;Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)V

    .line 497
    .local v0, "handle":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    return-object v0
.end method

.method public static addAlbumChangedListener(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public static addAlbumInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)J
    .locals 13
    .param p0, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 505
    const-wide/16 v1, -0x1

    .line 506
    .local v1, "insertResult":J
    sget-object v12, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_INFOS:Ljava/lang/Object;

    monitor-enter v12

    .line 509
    :try_start_0
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 510
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumInfos()V

    .line 513
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    .line 514
    .local v3, "displayName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 516
    .local v4, "dateAdded":J
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v7, "addAlbumInfo() - Display name: "

    invoke-static {v6, v7, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 520
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v10, "cvs":Landroid/content/ContentValues;
    const-string v6, "_display_name"

    invoke-virtual {v10, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v6, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 523
    const-string v6, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 524
    const-string v6, "date_media_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    const-string v6, "album"

    const/4 v7, 0x0

    invoke-virtual {v11, v6, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 526
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_1

    .line 527
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v7, "addAlbumInfo() - Insert failed"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    monitor-exit v12

    .line 535
    return-wide v1

    .line 530
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;-><init>(JLjava/lang/String;JJJ)V

    .line 531
    .local v0, "newInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    goto :goto_0

    .line 534
    .end local v0    # "newInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v4    # "dateAdded":J
    .end local v10    # "cvs":Landroid/content/ContentValues;
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v6

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public static addAlbumMediaRelation(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 24
    .param p0, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 542
    sget-object v19, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v19

    .line 545
    :try_start_0
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v18, :cond_0

    .line 546
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumMediaInfos()V

    .line 549
    :cond_0
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 550
    monitor-exit v19

    .line 596
    :goto_0
    return-void

    .line 553
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->albumId:J

    .line 554
    .local v6, "albumId":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    .line 556
    .local v14, "mediaId":J
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v20, "addAlbumMediaRelation() - Album id: "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const-string v22, ", media id: "

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 560
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v9, "cvs":Landroid/content/ContentValues;
    const-string v18, "album_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    const-string v18, "media_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    const-string v18, "album_media"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v18, v20, v22

    if-gez v18, :cond_3

    .line 564
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v20, "addAlbumMediaRelation() - Insert failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_2
    :goto_1
    monitor-exit v19

    goto :goto_0

    .end local v6    # "albumId":J
    .end local v9    # "cvs":Landroid/content/ContentValues;
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "mediaId":J
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 567
    .restart local v6    # "albumId":J
    .restart local v9    # "cvs":Landroid/content/ContentValues;
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "mediaId":J
    :cond_3
    :try_start_1
    new-instance v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-direct {v13, v6, v7, v14, v15}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;-><init>(JJ)V

    .line 568
    .local v13, "newInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/LinkedList;

    .line 570
    .local v12, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-nez v12, :cond_4

    .line 572
    new-instance v12, Ljava/util/LinkedList;

    .end local v12    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 573
    .restart local v12    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-static {v13}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumMediaRelationInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 581
    sget-object v18, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .line 582
    .local v8, "albumInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    if-eqz v8, :cond_2

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 585
    .local v16, "time":J
    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    .line 586
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 587
    .local v10, "cvsAlbum":Landroid/content/ContentValues;
    const-string v18, "date_media_added"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 588
    const-string v18, "album"

    const-string v20, "_id=?"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v11, v0, v10, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 591
    invoke-static {v8}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public static addAlbumMediaRelationChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    if-nez v1, :cond_0

    .line 607
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    .line 608
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-direct {v0, v1, p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;-><init>(Ljava/util/Collection;Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)V

    .line 609
    .local v0, "handle":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    return-object v0
.end method

.method public static addAlbumMediaRelationChangedListener(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumMediaRelationChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public static addExtraDirectoryInfoChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    if-nez v1, :cond_0

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    .line 623
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    invoke-direct {v0, v1, p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;-><init>(Ljava/util/Collection;Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)V

    .line 624
    .local v0, "handle":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    return-object v0
.end method

.method public static addExtraDirectoryInfoChangedListener(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addExtraDirectoryInfoChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public static addExtraMediaChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    if-nez v1, :cond_0

    .line 637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    .line 638
    :cond_0
    new-instance v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-direct {v0, v1, p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;-><init>(Ljava/util/Collection;Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)V

    .line 639
    .local v0, "handle":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    return-object v0
.end method

.method public static addExtraMediaChangedListener(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;",
            ">;)",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addExtraMediaChangedListener(Landroid/os/Handler;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public static addExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)J
    .locals 14
    .param p0, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 647
    const-wide/16 v4, -0x1

    .line 648
    .local v4, "insertResult":J
    sget-object v9, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v9

    .line 651
    :try_start_0
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 652
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraMediaInfos()V

    .line 655
    :cond_0
    iget-wide v2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->id:J

    .line 656
    .local v2, "id":J
    iget v6, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 657
    .local v6, "oneplusFlags":I
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .line 658
    .local v7, "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-nez v7, :cond_2

    .line 661
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v10, "addExtraMediaInfo() - Id: "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, ", flags: "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8, v10, v11, v12, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 665
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 666
    .local v0, "cvs":Landroid/content/ContentValues;
    const-string v8, "media_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    const-string v8, "oneplus_flags"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    const-string v8, "media"

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 669
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gez v8, :cond_1

    .line 670
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v10, "addExtraMediaInfo() - Insert failed"

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit v9

    .line 681
    return-wide v4

    .line 673
    .restart local v0    # "cvs":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    new-instance v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .end local v7    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    invoke-direct {v7, v2, v3, v6}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;-><init>(JI)V

    .line 674
    .restart local v7    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-static {v7}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onExtraMediaInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    goto :goto_0

    .line 680
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "id":J
    .end local v6    # "oneplusFlags":I
    .end local v7    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 679
    .restart local v2    # "id":J
    .restart local v6    # "oneplusFlags":I
    .restart local v7    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v10, "addExtraMediaInfo() - Item already exist"

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static callOnDeleted(Ljava/util/List;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "listenerHandleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<TT;>;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_1

    .line 708
    :cond_0
    return-void

    .line 690
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 692
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 693
    .local v0, "handler":Landroid/os/Handler;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 694
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<TT;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 695
    :cond_2
    invoke-interface {v2, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onDeleted(Ljava/lang/Object;)V

    .line 690
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 698
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$1;

    invoke-direct {v3, v2, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$1;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static callOnInserted(Ljava/util/List;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "listenerHandleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<TT;>;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_1

    .line 734
    :cond_0
    return-void

    .line 716
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 718
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 719
    .local v0, "handler":Landroid/os/Handler;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 720
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<TT;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 721
    :cond_2
    invoke-interface {v2, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onInserted(Ljava/lang/Object;)V

    .line 716
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 724
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$2;

    invoke-direct {v3, v2, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$2;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static callOnUpdated(Ljava/util/List;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "listenerHandleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle<TT;>;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_1

    .line 760
    :cond_0
    return-void

    .line 742
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 744
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 745
    .local v0, "handler":Landroid/os/Handler;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 746
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<TT;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 747
    :cond_2
    invoke-interface {v2, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onUpdated(Ljava/lang/Object;)V

    .line 742
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 750
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;

    invoke-direct {v3, v2, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static combineSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    .line 766
    array-length v0, p0

    .line 767
    .local v0, "aSize":I
    if-nez v0, :cond_0

    .line 775
    .end local p1    # "b":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 769
    .restart local p1    # "b":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    .line 770
    .local v1, "bSize":I
    :goto_1
    add-int v4, v0, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 771
    .local v2, "combined":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 772
    aget-object v4, p0, v3

    aput-object v4, v2, v3

    .line 771
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 769
    .end local v1    # "bSize":I
    .end local v2    # "combined":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 773
    .restart local v1    # "bSize":I
    .restart local v2    # "combined":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    .line 774
    add-int v4, v0, v3

    aget-object v5, p1, v3

    aput-object v5, v2, v4

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move-object p1, v2

    .line 775
    goto :goto_0
.end method

.method private static connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 782
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_DatabaseHelper:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-string v2, "gallery.db"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_DatabaseHelper:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;

    .line 786
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_DatabaseHelper:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;

    invoke-virtual {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 794
    if-nez p0, :cond_0

    .line 795
    const/16 v17, 0x0

    .line 851
    :goto_0
    return v17

    .line 798
    :cond_0
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v5, "delete() - Uri: "

    const-string v7, ", selection: "

    const-string v9, ", selection args: "

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-static/range {v4 .. v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 801
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 804
    .local v18, "tableId":I
    const/16 v17, 0x0

    .line 805
    .local v17, "rowCounts":I
    sparse-switch v18, :sswitch_data_0

    goto :goto_0

    .line 837
    :sswitch_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v13, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "media_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 839
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 840
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 809
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :sswitch_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .restart local v13    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 811
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 812
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 813
    :cond_1
    invoke-static {v13}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumInfos([J)I

    move-result v17

    .line 814
    goto :goto_0

    .line 818
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :sswitch_2
    invoke-static/range {p0 .. p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 819
    .local v14, "id":J
    invoke-static {v14, v15}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumInfo(J)I

    move-result v17

    .line 820
    goto/16 :goto_0

    .line 824
    .end local v14    # "id":J
    :sswitch_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v11, "albumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v16, "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "media_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 827
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 829
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 832
    :cond_2
    invoke-static {v11}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v4

    invoke-static/range {v16 .. v16}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    move-result v17

    .line 833
    goto/16 :goto_0

    .line 841
    .end local v11    # "albumIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "mediaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v13    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    invoke-static {v13}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfos([J)I

    move-result v17

    .line 842
    goto/16 :goto_0

    .line 846
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v13    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :sswitch_4
    invoke-static/range {p0 .. p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 847
    .restart local v14    # "id":J
    invoke-static {v14, v15}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfo(J)I

    move-result v17

    .line 848
    goto/16 :goto_0

    .line 805
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_4
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getAlbumContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getAlbumContentUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumContentUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 862
    const-string v0, "album"

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getContentUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumIds()[J
    .locals 1

    .prologue
    .line 915
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 916
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumInfos()V

    .line 919
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 870
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 871
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumInfos()V

    .line 874
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .line 875
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAlbumInfos()[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .locals 5

    .prologue
    .line 883
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 884
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumInfos()V

    .line 887
    :cond_0
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v3, v4, [Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .line 888
    .local v3, "result":[Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    const/4 v0, 0x0

    .line 889
    .local v0, "i":I
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .line 891
    .local v2, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    invoke-virtual {v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-result-object v4

    aput-object v4, v3, v0

    .line 892
    add-int/lit8 v0, v0, 0x1

    .line 893
    goto :goto_0

    .line 896
    .end local v2    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    :cond_1
    return-object v3
.end method

.method public static getAlbumMediaContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getAlbumMediaContentUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumMediaContentUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 907
    const-string v0, "album_media"

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getContentUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getContentUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://oneplus.gallery/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getDatabaseVersion(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 933
    const/16 v0, 0x9

    return v0
.end method

.method public static getExtraDirectoryInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 940
    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_DIRECTORY_INFOS:Ljava/lang/Object;

    monitor-enter v2

    .line 942
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 943
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraDirectoryInfos()V

    .line 944
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    .line 945
    .local v0, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v1

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 946
    .end local v0    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 953
    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v2

    .line 956
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 957
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraMediaInfos()V

    .line 960
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .line 963
    .local v0, "result":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v1

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 964
    .end local v0    # "result":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMediaContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getMediaContentUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaContentUri(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 975
    const-string v0, "media"

    invoke-static {v0, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getContentUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getRelatedAlbumIds(J)[J
    .locals 2
    .param p0, "mediaId"    # J

    .prologue
    .line 982
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v1

    .line 985
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 986
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumMediaInfos()V

    .line 989
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->getAlbumList(Ljava/util/LinkedList;J)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRelatedMediaIds(J)[J
    .locals 4
    .param p0, "albumId"    # J

    .prologue
    .line 997
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1001
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumMediaInfos()V

    .line 1004
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-static {v0, p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->getMediaList(Ljava/util/LinkedList;J)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1013
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1014
    :cond_0
    const/4 v5, 0x0

    .line 1059
    :goto_0
    return-object v5

    .line 1017
    :cond_1
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "insert() - Uri: "

    const-string v8, ", cvs: "

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1020
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 1023
    .local v17, "tableId":I
    sparse-switch v17, :sswitch_data_0

    .line 1059
    const/4 v5, 0x0

    goto :goto_0

    .line 1028
    :sswitch_0
    const-string v5, "_display_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1029
    .local v7, "displayName":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1031
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert() - Incorrect content value, display name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/4 v5, 0x0

    goto :goto_0

    .line 1034
    :cond_2
    const-string v5, "date_added"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 1035
    .local v14, "dateAdded":Ljava/lang/Long;
    if-nez v14, :cond_3

    .line 1036
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1037
    :cond_3
    new-instance v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    const-wide/16 v5, -0x1

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {v4 .. v13}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;-><init>(JLjava/lang/String;JJJ)V

    .line 1038
    .local v4, "albumInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    invoke-static {v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addAlbumInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)J

    move-result-wide v18

    .line 1039
    .local v18, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-gez v5, :cond_4

    .line 1040
    const/4 v5, 0x0

    goto :goto_0

    .line 1041
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 1046
    .end local v4    # "albumInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v14    # "dateAdded":Ljava/lang/Long;
    .end local v18    # "rowId":J
    :sswitch_1
    const-string v5, "media_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 1047
    .local v15, "id":Ljava/lang/Long;
    const-string v5, "oneplus_flags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1048
    .local v16, "oneplusFlags":Ljava/lang/Integer;
    if-eqz v15, :cond_5

    if-nez v16, :cond_6

    .line 1050
    :cond_5
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert() - Incorrect content value, id: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", flags: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1053
    :cond_6
    new-instance v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v8, v9, v6}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;-><init>(JI)V

    invoke-static {v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)J

    move-result-wide v18

    .line 1054
    .restart local v18    # "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-gez v5, :cond_7

    .line 1055
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1056
    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_0

    .line 1023
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method public static isMediaContainedInAlbum(JJ)Z
    .locals 8
    .param p0, "albumId"    # J
    .param p2, "mediaId"    # J

    .prologue
    .line 1071
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v4

    .line 1073
    :try_start_0
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 1074
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumMediaInfos()V

    .line 1075
    :cond_0
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 1076
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz v2, :cond_2

    .line 1078
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 1080
    .local v1, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v6, v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    cmp-long v3, v6, p2

    if-nez v3, :cond_1

    .line 1081
    const/4 v3, 0x1

    monitor-exit v4

    .line 1084
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1085
    .end local v2    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static onAlbumDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 5
    .param p0, "albumInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 1092
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1112
    :cond_0
    return-void

    .line 1094
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1096
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1097
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1098
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1099
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onDeleted(Ljava/lang/Object;)V

    .line 1094
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1102
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$4;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$4;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onAlbumInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 5
    .param p0, "albumInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 1118
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1138
    :cond_0
    return-void

    .line 1120
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1122
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1123
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1124
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1125
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onInserted(Ljava/lang/Object;)V

    .line 1120
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1128
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 5
    .param p0, "albumMediaRelationInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 1170
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1190
    :cond_0
    return-void

    .line 1172
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1174
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1175
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1176
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1177
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onDeleted(Ljava/lang/Object;)V

    .line 1172
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1180
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$7;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$7;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onAlbumMediaRelationInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 5
    .param p0, "albumMediaRelationInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 1196
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1216
    :cond_0
    return-void

    .line 1198
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1200
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1201
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1202
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1203
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onInserted(Ljava/lang/Object;)V

    .line 1198
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1206
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$8;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$8;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onAlbumMediaRelationUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 5
    .param p0, "albumMediaRelationInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .prologue
    .line 1222
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1242
    :cond_0
    return-void

    .line 1224
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1226
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1227
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1228
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1229
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onUpdated(Ljava/lang/Object;)V

    .line 1224
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1232
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onAlbumUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 5
    .param p0, "albumInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .prologue
    .line 1144
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1164
    :cond_0
    return-void

    .line 1146
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1148
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1149
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1150
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1151
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onUpdated(Ljava/lang/Object;)V

    .line 1146
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1154
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$6;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$6;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onExtraMediaDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V
    .locals 5
    .param p0, "extraMediaInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 1248
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1268
    :cond_0
    return-void

    .line 1250
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1252
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1253
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1254
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1255
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onDeleted(Ljava/lang/Object;)V

    .line 1250
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1258
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$10;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$10;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onExtraMediaInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V
    .locals 5
    .param p0, "extraMediaInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 1274
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1294
    :cond_0
    return-void

    .line 1276
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1278
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1279
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1280
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1281
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onInserted(Ljava/lang/Object;)V

    .line 1276
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1284
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$11;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$11;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onExtraMediaUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V
    .locals 5
    .param p0, "extraMediaInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 1300
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1320
    :cond_0
    return-void

    .line 1302
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1304
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v0, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->handler:Landroid/os/Handler;

    .line 1305
    .local v0, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaChangedListenerHandles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;

    iget-object v2, v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListenerHandle;->listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    .line 1306
    .local v2, "listener":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;, "Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1307
    :cond_2
    invoke-interface {v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onUpdated(Ljava/lang/Object;)V

    .line 1302
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1310
    :cond_3
    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$12;

    invoke-direct {v3, v2, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$12;-><init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1327
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1328
    :cond_0
    const/4 v11, 0x0

    .line 1409
    :cond_1
    :goto_0
    return-object v11

    .line 1331
    :cond_2
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v5, "query() - Uri: "

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    const-string v9, ", proj: "

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, ", selection: "

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p2, v7, v8

    const/4 v8, 0x5

    const-string v9, ", selection args: "

    aput-object v9, v7, v8

    const/4 v8, 0x6

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, ", order: "

    aput-object v9, v7, v8

    const/16 v8, 0x8

    aput-object p4, v7, v8

    invoke-static {v4, v5, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1334
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 1337
    .local v19, "tableId":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v10, "addedArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1341
    .local v2, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "distinct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1342
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1343
    :cond_3
    sparse-switch v19, :sswitch_data_0

    .line 1407
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1408
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->combineSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1409
    .local v6, "combinedArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0

    .line 1347
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "combinedArgs":[Ljava/lang/String;
    :sswitch_0
    const-string v4, "media"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1350
    const-string v4, "media_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1351
    invoke-static/range {p0 .. p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1355
    :sswitch_1
    const-string v4, "media"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 1360
    :sswitch_2
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 1361
    .local v18, "syncManager":Ljava/lang/Object;
    new-instance v15, Lcom/oneplus/base/SimpleRef;

    invoke-direct {v15}, Lcom/oneplus/base/SimpleRef;-><init>()V

    .line 1362
    .local v15, "managerRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Lcom/oneplus/gallery/media/OPMediaManager;>;"
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v4

    const-class v5, Lcom/oneplus/gallery/media/OPMediaManager;

    const/4 v7, 0x0

    new-instance v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;

    move-object/from16 v0, v18

    invoke-direct {v8, v0, v15}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;-><init>(Ljava/lang/Object;Lcom/oneplus/base/Ref;)V

    invoke-static {v4, v5, v7, v8}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 1375
    invoke-interface {v15}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1377
    monitor-enter v18

    .line 1379
    :try_start_0
    invoke-interface {v15}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_4

    .line 1384
    const-wide/16 v4, 0x2710

    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1393
    :cond_5
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "content_uri"

    aput-object v7, v4, v5

    invoke-direct {v11, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1394
    .local v11, "cursor":Landroid/database/MatrixCursor;
    invoke-interface {v15}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/OPMediaManager;

    .line 1395
    .local v14, "manager":Lcom/oneplus/gallery/media/OPMediaManager;
    if-eqz v14, :cond_6

    .line 1397
    invoke-interface {v14}, Lcom/oneplus/gallery/media/OPMediaManager;->getRecycledMedia()Ljava/util/List;

    move-result-object v17

    .line 1398
    .local v17, "recycledMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/media/Media;

    .line 1399
    .local v16, "media":Lcom/oneplus/gallery/media/Media;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {v16 .. v16}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v11, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 1386
    .end local v11    # "cursor":Landroid/database/MatrixCursor;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "manager":Lcom/oneplus/gallery/media/OPMediaManager;
    .end local v16    # "media":Lcom/oneplus/gallery/media/Media;
    .end local v17    # "recycledMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    :catch_0
    move-exception v12

    .line 1388
    .local v12, "e":Ljava/lang/Throwable;
    :try_start_3
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v5, "query() - Cannot wait for component"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1391
    .end local v12    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1402
    .restart local v11    # "cursor":Landroid/database/MatrixCursor;
    .restart local v14    # "manager":Lcom/oneplus/gallery/media/OPMediaManager;
    :cond_6
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v5, "query() - Cannot find media manager component"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1343
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method private static queryAllAlbumInfos()V
    .locals 15

    .prologue
    .line 1416
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_INFOS:Ljava/lang/Object;

    monitor-enter v13

    .line 1419
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1420
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    .line 1421
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1424
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v14, "queryAllAlbumInfos()"

    invoke-static {v1, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1428
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "album"

    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_ALBUM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1429
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1432
    .local v3, "id":J
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1433
    .local v5, "displayName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1434
    .local v6, "dateAdded":J
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1435
    .local v8, "dateModified":J
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1436
    .local v10, "dateMediaAdded":J
    new-instance v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    invoke-direct/range {v2 .. v11}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;-><init>(JLjava/lang/String;JJJ)V

    .line 1437
    .local v2, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1439
    .end local v2    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v3    # "id":J
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v6    # "dateAdded":J
    .end local v8    # "dateModified":J
    .end local v10    # "dateMediaAdded":J
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1440
    return-void
.end method

.method private static queryAllAlbumMediaInfos()V
    .locals 16

    .prologue
    .line 1446
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v13

    .line 1449
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 1450
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    .line 1451
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    .line 1453
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1456
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v2, "queryAllAlbumMediaInfos()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1460
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "album_media"

    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_ALBUM_MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1461
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1463
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1464
    .local v8, "albumId":J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1465
    .local v14, "mediaId":J
    new-instance v11, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-direct {v11, v8, v9, v14, v15}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;-><init>(JJ)V

    .line 1466
    .local v11, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1467
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/LinkedList;

    .line 1468
    .local v12, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-nez v12, :cond_2

    .line 1470
    new-instance v12, Ljava/util/LinkedList;

    .end local v12    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 1471
    .restart local v12    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    :cond_2
    invoke-virtual {v12, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1475
    .end local v8    # "albumId":J
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v12    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v14    # "mediaId":J
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    return-void
.end method

.method private static queryAllExtraDirectoryInfos()V
    .locals 14

    .prologue
    .line 1482
    sget-object v9, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_DIRECTORY_INFOS:Ljava/lang/Object;

    monitor-enter v9

    .line 1485
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    .line 1491
    :goto_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v2, "queryAllExtraDirectoryInfos()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1495
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "directory"

    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_DIRECTORY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1496
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1499
    .local v10, "id":J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1500
    .local v12, "mediaAddedDate":J
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;-><init>(JJ)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1502
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":J
    .end local v12    # "mediaAddedDate":J
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1488
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1502
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1503
    return-void
.end method

.method private static queryAllExtraMediaInfos()V
    .locals 14

    .prologue
    .line 1509
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v13

    .line 1512
    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    .line 1514
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1517
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v2, "queryAllExtraMediaInfos()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1521
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media"

    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TABLE_MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1522
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1524
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1525
    .local v10, "id":J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1526
    .local v12, "oneplusFlags":I
    new-instance v9, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    invoke-direct {v9, v10, v11, v12}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;-><init>(JI)V

    .line 1527
    .local v9, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1529
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v10    # "id":J
    .end local v12    # "oneplusFlags":I
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    return-void
.end method

.method public static removeAlbumInfo(J)I
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 1536
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumInfos([J)I

    move-result v0

    return v0
.end method

.method public static removeAlbumInfos([J)I
    .locals 18
    .param p0, "albumIds"    # [J

    .prologue
    .line 1541
    const/4 v9, 0x0

    .line 1542
    .local v9, "rowCounts":I
    sget-object v14, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_INFOS:Ljava/lang/Object;

    monitor-enter v14

    .line 1545
    :try_start_0
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v13, :cond_0

    .line 1546
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumInfos()V

    .line 1549
    :cond_0
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v15, "removeAlbumInfos() - Remove albums: "

    move-object/from16 v0, p0

    invoke-static {v13, v15, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1552
    move-object/from16 v0, p0

    array-length v2, v0

    .line 1553
    .local v2, "albumIdsLength":I
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_3

    if-lez v2, :cond_3

    .line 1555
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1556
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 1557
    .local v12, "startIndex":I
    const/16 v13, 0x32

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1558
    .local v5, "endIndex":I
    sub-int v3, v5, v12

    .line 1559
    .local v3, "counts":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1560
    .local v11, "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v10, v3, [Ljava/lang/String;

    .line 1561
    .local v10, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 1563
    add-int v7, v12, v6

    .line 1564
    .local v7, "index":I
    aget-wide v16, p0, v7

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v6

    .line 1565
    const-string v13, "_id=?"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    add-int/lit8 v13, v5, -0x1

    if-ge v7, v13, :cond_1

    .line 1567
    const-string v13, " OR "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1570
    :cond_1
    const-string v13, "album"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v13, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v9, v13

    .line 1571
    if-ge v5, v2, :cond_2

    .line 1574
    move v12, v5

    .line 1575
    add-int/lit8 v13, v5, 0x32

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1576
    sub-int v3, v5, v12

    .line 1577
    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11    # "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1578
    .restart local v11    # "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v10, v3, [Ljava/lang/String;

    .line 1579
    const/4 v6, -0x1

    goto :goto_1

    .line 1588
    .end local v7    # "index":I
    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_3

    .line 1590
    sget-object v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    aget-wide v16, p0, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .line 1591
    .local v8, "removedInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    invoke-static {v8}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    .line 1588
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1594
    .end local v3    # "counts":I
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "endIndex":I
    .end local v6    # "i":I
    .end local v8    # "removedInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "selectionBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "startIndex":I
    :cond_3
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    .line 1600
    return v9

    .line 1594
    .end local v2    # "albumIdsLength":I
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13
.end method

.method public static removeAlbumMediaRelationInfo(JJ)I
    .locals 4
    .param p0, "albumId"    # J
    .param p2, "mediaId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1607
    new-array v0, v1, [J

    aput-wide p0, v0, v2

    new-array v1, v1, [J

    aput-wide p2, v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    move-result v0

    return v0
.end method

.method public static removeAlbumMediaRelationInfos()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1611
    invoke-static {v0, v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    move-result v0

    return v0
.end method

.method public static removeAlbumMediaRelationInfos(J)I
    .locals 2
    .param p0, "albumId"    # J

    .prologue
    .line 1615
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    move-result v0

    return v0
.end method

.method public static removeAlbumMediaRelationInfos([J[J)I
    .locals 1
    .param p0, "albumIds"    # [J
    .param p1, "mediaIds"    # [J

    .prologue
    .line 1619
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[JZ)I

    move-result v0

    return v0
.end method

.method public static removeAlbumMediaRelationInfos([J[JZ)I
    .locals 34
    .param p0, "albumIds"    # [J
    .param p1, "mediaIds"    # [J
    .param p2, "notifyDeleted"    # Z

    .prologue
    .line 1624
    const/16 v22, 0x0

    .line 1625
    .local v22, "rowCounts":I
    sget-object v28, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v28

    .line 1628
    if-nez p0, :cond_0

    .line 1629
    const/16 v27, 0x0

    :try_start_0
    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 p0, v0

    .line 1630
    :cond_0
    if-nez p1, :cond_1

    .line 1631
    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 p1, v0

    .line 1632
    :cond_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_2

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_2

    .line 1634
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v29, "removeAlbumMediaRelationInfos() - Incorrect argument, both album list and media list are empty"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    monitor-exit v28

    move/from16 v23, v22

    .line 1825
    .end local v22    # "rowCounts":I
    .local v23, "rowCounts":I
    :goto_0
    return v23

    .line 1637
    .end local v23    # "rowCounts":I
    .restart local v22    # "rowCounts":I
    :cond_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_3

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 1639
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v29, "removeAlbumMediaRelationInfos() - Incorrect argument"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    monitor-exit v28

    move/from16 v23, v22

    .end local v22    # "rowCounts":I
    .restart local v23    # "rowCounts":I
    goto :goto_0

    .line 1644
    .end local v23    # "rowCounts":I
    .restart local v22    # "rowCounts":I
    :cond_3
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v27, :cond_4

    .line 1645
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumMediaInfos()V

    .line 1648
    :cond_4
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/LinkedList;->size()I

    move-result v27

    if-lez v27, :cond_15

    .line 1651
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1652
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v24, 0x0

    .line 1653
    .local v24, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    array-length v6, v0

    .line 1654
    .local v6, "albumIdsLength":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    .line 1655
    .local v17, "mediaIdsLength":I
    if-lez v6, :cond_6

    if-lez v17, :cond_6

    move/from16 v0, v17

    if-ne v6, v0, :cond_6

    .line 1657
    const/16 v26, 0x0

    .line 1658
    .local v26, "startIndex":I
    const/16 v27, 0x32

    move/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1659
    .local v9, "endIndex":I
    sub-int v7, v9, v26

    .line 1660
    .local v7, "counts":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1661
    .local v25, "selectionBuilder":Ljava/lang/StringBuilder;
    mul-int/lit8 v27, v7, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1662
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v7, :cond_a

    .line 1664
    add-int v12, v26, v10

    .line 1665
    .local v12, "index":I
    mul-int/lit8 v27, v10, 0x2

    aget-wide v30, p0, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v24, v27

    .line 1666
    mul-int/lit8 v27, v10, 0x2

    add-int/lit8 v27, v27, 0x1

    aget-wide v30, p1, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v24, v27

    .line 1667
    const-string v27, "("

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "album_id=?"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, " AND "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "media_id=?"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, ")"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    add-int/lit8 v27, v9, -0x1

    move/from16 v0, v27

    if-ge v12, v0, :cond_5

    .line 1669
    const-string v27, " OR "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1672
    :cond_5
    const-string v27, "album_media"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    add-int v22, v22, v27

    .line 1673
    if-ge v9, v6, :cond_a

    .line 1676
    move/from16 v26, v9

    .line 1677
    add-int/lit8 v27, v9, 0x32

    move/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1678
    sub-int v7, v9, v26

    .line 1679
    new-instance v25, Ljava/lang/StringBuilder;

    .end local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1680
    .restart local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    mul-int/lit8 v27, v7, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1681
    const/4 v10, -0x1

    goto :goto_2

    .line 1689
    .end local v7    # "counts":I
    .end local v9    # "endIndex":I
    .end local v10    # "i":I
    .end local v12    # "index":I
    .end local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "startIndex":I
    :cond_6
    if-lez v6, :cond_8

    .line 1691
    const/16 v26, 0x0

    .line 1692
    .restart local v26    # "startIndex":I
    const/16 v27, 0x32

    move/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1693
    .restart local v9    # "endIndex":I
    sub-int v7, v9, v26

    .line 1694
    .restart local v7    # "counts":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1695
    .restart local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1696
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v7, :cond_a

    .line 1698
    add-int v12, v26, v10

    .line 1699
    .restart local v12    # "index":I
    aget-wide v30, p0, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v24, v10

    .line 1700
    const-string v27, "album_id=?"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    add-int/lit8 v27, v9, -0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_7

    .line 1702
    const-string v27, " OR "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1705
    :cond_7
    const-string v27, "album_media"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    add-int v22, v22, v27

    .line 1706
    if-ge v9, v6, :cond_a

    .line 1709
    move/from16 v26, v9

    .line 1710
    add-int/lit8 v27, v9, 0x32

    move/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1711
    sub-int v7, v9, v26

    .line 1712
    new-instance v25, Ljava/lang/StringBuilder;

    .end local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1713
    .restart local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1714
    const/4 v10, -0x1

    goto :goto_4

    .line 1722
    .end local v7    # "counts":I
    .end local v9    # "endIndex":I
    .end local v10    # "i":I
    .end local v12    # "index":I
    .end local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "startIndex":I
    :cond_8
    if-lez v17, :cond_a

    .line 1724
    const/16 v26, 0x0

    .line 1725
    .restart local v26    # "startIndex":I
    const/16 v27, 0x32

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1726
    .restart local v9    # "endIndex":I
    sub-int v7, v9, v26

    .line 1727
    .restart local v7    # "counts":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1728
    .restart local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1729
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    if-ge v10, v7, :cond_a

    .line 1731
    add-int v12, v26, v10

    .line 1732
    .restart local v12    # "index":I
    aget-wide v30, p1, v12

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v24, v10

    .line 1733
    const-string v27, "media_id=?"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    add-int/lit8 v27, v9, -0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_9

    .line 1735
    const-string v27, " OR "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1738
    :cond_9
    const-string v27, "album_media"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    add-int v22, v22, v27

    .line 1739
    move/from16 v0, v17

    if-ge v9, v0, :cond_a

    .line 1742
    move/from16 v26, v9

    .line 1743
    add-int/lit8 v27, v9, 0x32

    move/from16 v0, v27

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1744
    sub-int v7, v9, v26

    .line 1745
    new-instance v25, Ljava/lang/StringBuilder;

    .end local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1746
    .restart local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1747
    const/4 v10, -0x1

    goto :goto_6

    .line 1757
    .end local v7    # "counts":I
    .end local v9    # "endIndex":I
    .end local v10    # "i":I
    .end local v12    # "index":I
    .end local v25    # "selectionBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "startIndex":I
    :cond_a
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v29, "removeAlbumMediaRelationInfos() - Removed album media relation size: "

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1760
    if-lez v6, :cond_e

    if-lez v17, :cond_e

    move/from16 v0, v17

    if-ne v6, v0, :cond_e

    .line 1762
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    if-ge v10, v6, :cond_15

    .line 1764
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    aget-wide v30, p0, v10

    aget-wide v32, p1, v10

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    move-wide/from16 v3, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->removeAlbumMediaRelation(Ljava/util/LinkedList;JJ)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    move-result-object v20

    .line 1765
    .local v20, "removedInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    aget-wide v30, p0, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedList;

    .line 1766
    .local v16, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    if-eqz v16, :cond_c

    .line 1768
    aget-wide v18, p1, v10

    .line 1769
    .local v18, "mediaId":J
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1770
    .local v14, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 1772
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 1773
    .local v13, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v0, v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    move-wide/from16 v30, v0

    cmp-long v27, v30, v18

    if-nez v27, :cond_b

    .line 1775
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 1780
    .end local v13    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v18    # "mediaId":J
    :cond_c
    if-eqz p2, :cond_d

    if-eqz v20, :cond_d

    .line 1781
    invoke-static/range {v20 .. v20}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 1762
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1784
    .end local v10    # "i":I
    .end local v16    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v20    # "removedInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    :cond_e
    if-lez v6, :cond_10

    .line 1786
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    if-ge v10, v6, :cond_15

    .line 1788
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    aget-wide v30, p0, v10

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->removeAlbum(Ljava/util/LinkedList;J)Ljava/util/List;

    move-result-object v21

    .line 1789
    .local v21, "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    aget-wide v30, p0, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    if-eqz p2, :cond_f

    if-eqz v21, :cond_f

    .line 1792
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_f

    .line 1793
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-static/range {v27 .. v27}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 1792
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1786
    .end local v15    # "j":I
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1797
    .end local v10    # "i":I
    .end local v21    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_10
    if-lez v17, :cond_15

    .line 1799
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    .line 1801
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    aget-wide v30, p1, v10

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->removeMedia(Ljava/util/LinkedList;J)Ljava/util/List;

    move-result-object v21

    .line 1802
    .restart local v21    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    aget-wide v18, p1, v10

    .line 1803
    .restart local v18    # "mediaId":J
    sget-object v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfosByAlbumId:Ljava/util/Map;

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedList;

    .line 1805
    .restart local v16    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1806
    .restart local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 1808
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 1809
    .restart local v13    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v0, v13, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    move-wide/from16 v30, v0

    cmp-long v27, v30, v18

    if-nez v27, :cond_12

    .line 1811
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 1824
    .end local v6    # "albumIdsLength":I
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    .end local v14    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v16    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v17    # "mediaIdsLength":I
    .end local v18    # "mediaId":J
    .end local v21    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v27

    .line 1816
    .restart local v6    # "albumIdsLength":I
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v17    # "mediaIdsLength":I
    .restart local v18    # "mediaId":J
    .restart local v21    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .restart local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_13
    if-eqz p2, :cond_14

    if-eqz v21, :cond_14

    .line 1818
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_c
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_14

    .line 1819
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-static/range {v27 .. v27}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumMediaRelationDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V

    .line 1818
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1799
    .end local v15    # "j":I
    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1824
    .end local v6    # "albumIdsLength":I
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v17    # "mediaIdsLength":I
    .end local v18    # "mediaId":J
    .end local v21    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;>;"
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_15
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v22

    .line 1825
    .end local v22    # "rowCounts":I
    .restart local v23    # "rowCounts":I
    goto/16 :goto_0
.end method

.method public static removeAllExtraMediaInfo()I
    .locals 8

    .prologue
    .line 1832
    const/4 v3, 0x0

    .line 1833
    .local v3, "rowCounts":I
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v5

    .line 1836
    :try_start_0
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 1837
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraMediaInfos()V

    .line 1840
    :cond_0
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "removeAllExtraMediaInfo()"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1846
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1847
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "media"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1848
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1850
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAllExtraMediaInfo() - Data is not sync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 1863
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1855
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v2, "removedExtraInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1857
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1861
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    invoke-static {v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onExtraMediaDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    .line 1860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1863
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "i":I
    .end local v2    # "removedExtraInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1864
    return v3
.end method

.method public static removeExtraDirectoryInfo(J)Z
    .locals 10
    .param p0, "id"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1871
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_DIRECTORY_INFOS:Ljava/lang/Object;

    monitor-enter v4

    .line 1874
    :try_start_0
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 1875
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraDirectoryInfos()V

    .line 1878
    :cond_0
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    .line 1879
    .local v1, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    if-nez v1, :cond_1

    .line 1880
    monitor-exit v4

    .line 1890
    :goto_0
    return v2

    .line 1883
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1884
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "directory"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1887
    sget-object v2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->callOnDeleted(Ljava/util/List;Ljava/lang/Object;)V

    .line 1890
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 1891
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static removeExtraMediaInfo(J)I
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 1898
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfos([J)I

    move-result v0

    return v0
.end method

.method public static removeExtraMediaInfos([J)I
    .locals 1
    .param p0, "ids"    # [J

    .prologue
    .line 1902
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfos([JZ)I

    move-result v0

    return v0
.end method

.method public static removeExtraMediaInfos([JZ)I
    .locals 24
    .param p0, "ids"    # [J
    .param p1, "notifyDeleted"    # Z

    .prologue
    .line 1906
    const/16 v16, 0x0

    .line 1907
    .local v16, "rowCounts":I
    sget-object v21, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v21

    .line 1910
    if-eqz p0, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1911
    :cond_0
    monitor-exit v21

    move/from16 v17, v16

    .line 1978
    .end local v16    # "rowCounts":I
    .local v17, "rowCounts":I
    :goto_0
    return v17

    .line 1914
    .end local v17    # "rowCounts":I
    .restart local v16    # "rowCounts":I
    :cond_1
    sget-object v20, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v20, :cond_2

    .line 1915
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraMediaInfos()V

    .line 1918
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1919
    .local v13, "removedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    .local v14, "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_4

    .line 1922
    aget-wide v10, p0, v8

    .line 1923
    .local v10, "id":J
    sget-object v20, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .line 1924
    .local v6, "deleteInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v6, :cond_3

    .line 1926
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    iget-wide v0, v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1920
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1933
    .end local v6    # "deleteInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .end local v10    # "id":J
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 1935
    .local v15, "removedSize":I
    sget-object v20, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v22, "removeExtraMediaInfos() - Removed id size: "

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1936
    if-lez v15, :cond_7

    .line 1938
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1939
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v19, 0x0

    .line 1940
    .local v19, "startIndex":I
    const/16 v20, 0x32

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1941
    .local v7, "endIndex":I
    sub-int v4, v7, v19

    .line 1942
    .local v4, "counts":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1943
    .local v18, "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v12, v4, [Ljava/lang/String;

    .line 1944
    .local v12, "partialRemovedIds":[Ljava/lang/String;
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_6

    .line 1946
    add-int v9, v19, v8

    .line 1947
    .local v9, "index":I
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v12, v8

    .line 1948
    const-string v20, "media_id=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    add-int/lit8 v20, v7, -0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    .line 1950
    const-string v20, " OR "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1953
    :cond_5
    const-string v20, "media"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    add-int v16, v16, v20

    .line 1954
    if-ge v7, v15, :cond_6

    .line 1957
    move/from16 v19, v7

    .line 1958
    add-int/lit8 v20, v7, 0x32

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1959
    sub-int v4, v7, v19

    .line 1960
    new-instance v18, Ljava/lang/StringBuilder;

    .end local v18    # "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1961
    .restart local v18    # "selectionBuilder":Ljava/lang/StringBuilder;
    new-array v12, v4, [Ljava/lang/String;

    .line 1962
    const/4 v8, -0x1

    goto :goto_3

    .line 1971
    .end local v9    # "index":I
    :cond_6
    if-eqz p1, :cond_7

    .line 1973
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_7

    .line 1974
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    invoke-static/range {v20 .. v20}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onExtraMediaDeleted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    .line 1973
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1977
    .end local v4    # "counts":I
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "endIndex":I
    .end local v12    # "partialRemovedIds":[Ljava/lang/String;
    .end local v18    # "selectionBuilder":Ljava/lang/StringBuilder;
    .end local v19    # "startIndex":I
    :cond_7
    monitor-exit v21

    move/from16 v17, v16

    .line 1978
    .end local v16    # "rowCounts":I
    .restart local v17    # "rowCounts":I
    goto/16 :goto_0

    .line 1977
    .end local v8    # "i":I
    .end local v13    # "removedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "removedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;>;"
    .end local v15    # "removedSize":I
    .end local v17    # "rowCounts":I
    .restart local v16    # "rowCounts":I
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20
.end method

.method public static removeMediaInfo(J)I
    .locals 4
    .param p0, "mediaId"    # J

    .prologue
    .line 1985
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    .line 1986
    invoke-static {p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfo(J)I

    move-result v0

    return v0
.end method

.method public static setExtraDirectoryInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)Z
    .locals 12
    .param p0, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1993
    if-nez p0, :cond_0

    .line 2042
    :goto_0
    return v3

    .line 1995
    :cond_0
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_DIRECTORY_INFOS:Ljava/lang/Object;

    monitor-enter v5

    .line 1998
    :try_start_0
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1999
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraDirectoryInfos()V

    .line 2002
    :cond_1
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    iget-wide v8, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    .line 2003
    .local v0, "currentInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    if-nez v0, :cond_3

    .line 2006
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2007
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2008
    .local v1, "cvs":Landroid/content/ContentValues;
    const-string v6, "_id"

    iget-wide v8, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2009
    const-string v6, "date_media_added"

    iget-wide v8, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2010
    const-string v6, "directory"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 2012
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "setExtraDirectoryInfo() - Fail to insert to DB"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    monitor-exit v5

    goto :goto_0

    .line 2043
    .end local v0    # "currentInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .end local v1    # "cvs":Landroid/content/ContentValues;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2017
    .restart local v0    # "currentInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;
    .restart local v1    # "cvs":Landroid/content/ContentValues;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfos:Ljava/util/HashMap;

    iget-wide v6, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    invoke-static {v3, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->callOnInserted(Ljava/util/List;Ljava/lang/Object;)V

    .line 2042
    :goto_1
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 2025
    .end local v1    # "cvs":Landroid/content/ContentValues;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2026
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2027
    .restart local v1    # "cvs":Landroid/content/ContentValues;
    const-string v6, "date_media_added"

    iget-wide v8, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2028
    const-string v6, "directory"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-ge v6, v4, :cond_4

    .line 2030
    sget-object v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "setExtraDirectoryInfo() - Fail to update DB"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    monitor-exit v5

    goto/16 :goto_0

    .line 2035
    :cond_4
    iget-wide v6, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    iget-wide v8, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_5

    .line 2036
    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    .line 2037
    :cond_5
    iget-wide v6, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    iput-wide v6, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;->mediaAddedTime:J

    .line 2040
    sget-object v3, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraDirectoryInfoChangedListenerHandles:Ljava/util/List;

    invoke-static {v3, p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->callOnUpdated(Ljava/util/List;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static setExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)Z
    .locals 4
    .param p0, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    .line 2050
    invoke-static {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->addExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2051
    const/4 v0, 0x0

    .line 2052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static syncMedia(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2059
    .local p0, "mediaIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez p0, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2063
    :cond_1
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    if-nez v5, :cond_2

    .line 2064
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumMediaInfos()V

    .line 2065
    :cond_2
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 2066
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraMediaInfos()V

    .line 2069
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2070
    .local v3, "unknownExtraMediaIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2072
    .local v2, "mediaId":Ljava/lang/Long;
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2073
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2075
    .end local v2    # "mediaId":Ljava/lang/Long;
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2076
    .local v4, "unknownRelationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumMediaInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    .line 2078
    .local v1, "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    iget-wide v6, v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2079
    iget-wide v6, v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2083
    .end local v1    # "info":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2085
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "syncMedia() - Unknown extra media: "

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2086
    invoke-static {v3}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeExtraMediaInfos([JZ)I

    .line 2088
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 2090
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "syncMedia() - Unknown relation: "

    invoke-static {v5, v6, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2091
    const/4 v5, 0x0

    invoke-static {v4}, Lcom/oneplus/util/CollectionUtils;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->removeAlbumMediaRelationInfos([J[J)I

    goto/16 :goto_0
.end method

.method public static update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2100
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2122
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 2104
    :cond_1
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "update() - Uri: "

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v4

    const/4 v8, 0x1

    const-string v9, ", cvs: "

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, ", selection: "

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p2, v7, v8

    const/4 v8, 0x5

    const-string v9, ", selection args: "

    aput-object v9, v7, v8

    const/4 v8, 0x6

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2107
    sget-object v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 2110
    .local v3, "tableId":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 2118
    :sswitch_1
    const-string v4, "media_id"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2119
    .local v0, "id":J
    const-string v4, "oneplus_flags"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2120
    .local v2, "oneplusFlags":I
    new-instance v4, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    invoke-direct {v4, v0, v1, v2}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;-><init>(JI)V

    invoke-static {v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->updateExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)I

    move-result v4

    goto :goto_0

    .line 2110
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method public static updateAlbumInfoName(JLjava/lang/String;)I
    .locals 14
    .param p0, "id"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 2129
    const/4 v3, 0x0

    .line 2130
    .local v3, "rowCounts":I
    sget-object v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_ALBUM_INFOS:Ljava/lang/Object;

    monitor-enter v7

    .line 2133
    :try_start_0
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 2134
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllAlbumInfos()V

    .line 2137
    :cond_0
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_AlbumInfos:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    .line 2138
    .local v5, "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    if-nez v5, :cond_1

    .line 2140
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v8, "updateAlbumInfoName() - No existed album info to update"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    monitor-exit v7

    move v4, v3

    .line 2176
    .end local v3    # "rowCounts":I
    .local v4, "rowCounts":I
    :goto_0
    return v4

    .line 2143
    .end local v4    # "rowCounts":I
    .restart local v3    # "rowCounts":I
    :cond_1
    move-object/from16 v2, p2

    .line 2144
    .local v2, "displayName":Ljava/lang/String;
    iget-object v6, v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2146
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v8, "updateAlbumInfoName() - No change happened"

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    monitor-exit v7

    move v4, v3

    .end local v3    # "rowCounts":I
    .restart local v4    # "rowCounts":I
    goto :goto_0

    .line 2151
    .end local v4    # "rowCounts":I
    .restart local v3    # "rowCounts":I
    :cond_2
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v8, "updateAlbumInfoName() - Id: "

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, ", display name: "

    invoke-static {v6, v8, v9, v10, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2154
    iput-object v2, v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    .line 2155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    .line 2157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2158
    .local v0, "cvs":Landroid/content/ContentValues;
    const-string v6, "_display_name"

    iget-object v8, v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-string v6, "date_modified"

    iget-wide v8, v5, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2162
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 2164
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2165
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "album"

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v6, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2166
    if-eq v3, v12, :cond_3

    .line 2168
    sget-object v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAlbumInfoName() - Data is not sync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 2175
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v5    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2173
    .restart local v0    # "cvs":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "displayName":Ljava/lang/String;
    .restart local v5    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    :cond_3
    :try_start_1
    invoke-static {v5}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V

    .line 2175
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v3

    .line 2176
    .end local v3    # "rowCounts":I
    .restart local v4    # "rowCounts":I
    goto/16 :goto_0
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    .line 2184
    sget-object v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v6, "updateDatabase() - From: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ", to: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v6, v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2186
    if-ge p2, v11, :cond_2

    .line 2189
    if-lez p2, :cond_0

    .line 2191
    const-string v1, "DROP TABLE IF EXISTS media"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2192
    const-string v1, "DROP TABLE IF EXISTS album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2193
    const-string v1, "DROP TABLE IF EXISTS album_media"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2197
    :cond_0
    const-string v1, "CREATE TABLE media (media_id INTEGER,oneplus_flags INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2198
    const-string v1, "CREATE TABLE album (_id INTEGER PRIMARY KEY,_display_name TEXT,date_added INTEGER,date_modified INTEGER,date_media_added INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2199
    const-string v1, "CREATE TABLE album_media (album_id INTEGER,media_id INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2200
    const-string v1, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2201
    const-string v1, "CREATE INDEX album_id_index ON album_media(album_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2202
    const-string v1, "CREATE INDEX media_id_index ON media(media_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2231
    :cond_1
    :goto_0
    return-void

    .line 2204
    :cond_2
    if-ne p2, v11, :cond_3

    .line 2206
    const-string v1, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2207
    const-string v1, "ALTER TABLE album ADD date_added INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2208
    const-string v1, "ALTER TABLE album ADD date_modified INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2209
    const-string v1, "ALTER TABLE album ADD date_media_added INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2212
    .local v2, "dataAddedTime":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2213
    .local v0, "cvs":Landroid/content/ContentValues;
    const-string v1, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2214
    const-string v1, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2215
    const-string v1, "date_media_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2216
    const-string v1, "album"

    invoke-virtual {p1, v1, v0, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2218
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v2    # "dataAddedTime":J
    :cond_3
    const/4 v1, 0x7

    if-ne p2, v1, :cond_4

    .line 2220
    const-string v1, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2221
    const-string v1, "ALTER TABLE album ADD date_media_added INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2223
    .local v4, "time":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2224
    .restart local v0    # "cvs":Landroid/content/ContentValues;
    const-string v1, "date_media_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2225
    const-string v1, "album"

    invoke-virtual {p1, v1, v0, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2227
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v4    # "time":J
    :cond_4
    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    .line 2229
    const-string v1, "CREATE TABLE directory (_id INTEGER PRIMARY KEY,date_media_added INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateExtraMediaInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)I
    .locals 14
    .param p0, "info"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .prologue
    const/4 v13, 0x1

    .line 2237
    const/4 v5, 0x0

    .line 2238
    .local v5, "rowCounts":I
    sget-object v8, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->SYNC_EXTRA_MEDIA_INFOS:Ljava/lang/Object;

    monitor-enter v8

    .line 2241
    :try_start_0
    sget-object v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    if-nez v7, :cond_0

    .line 2242
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->queryAllExtraMediaInfos()V

    .line 2245
    :cond_0
    iget-wide v2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->id:J

    .line 2246
    .local v2, "id":J
    iget v4, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 2247
    .local v4, "oneplusFlags":I
    sget-object v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->m_ExtraMediaInfos:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    .line 2248
    .local v6, "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v6, :cond_2

    .line 2251
    sget-object v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    const-string v9, "updateExtraMediaInfo() - Id: "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, ", flags: "

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7, v9, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2254
    invoke-virtual {v6, v2, v3, v4}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->set(JI)V

    .line 2257
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->connectToGalleyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2258
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2259
    .local v0, "cvs":Landroid/content/ContentValues;
    const-string v7, "media_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2260
    const-string v7, "oneplus_flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2261
    const-string v7, "media"

    const-string v9, "media_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v7, v0, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 2262
    if-eq v5, v13, :cond_1

    .line 2264
    sget-object v7, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateExtraMediaInfo() - Data is not sync: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 2271
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "id":J
    .end local v4    # "oneplusFlags":I
    .end local v6    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2269
    .restart local v0    # "cvs":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "id":J
    .restart local v4    # "oneplusFlags":I
    .restart local v6    # "value":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :cond_1
    :try_start_1
    invoke-static {v6}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onExtraMediaUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;)V

    .line 2271
    .end local v0    # "cvs":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2272
    return v5
.end method
