.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;
.super Ljava/lang/Object;
.source "Forum2.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/forum/Forum2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicSongTable"
.end annotation


# static fields
.field public static final ALBUME_ID:Ljava/lang/String; = "album_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOWNLOADS:Ljava/lang/String; = "downloads"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final FILE_URL:Ljava/lang/String; = "file_url"

.field public static final FORMAT:Ljava/lang/String; = "format"

.field public static final MUSIC_ID:Ljava/lang/String; = "music_id"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RELEASE_TIME:Ljava/lang/String; = "release_time"

.field public static final SHARER:Ljava/lang/String; = "sharer"

.field public static final SINGER:Ljava/lang/String; = "singer"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "music_song"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 422
    const-string v0, "music_song"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;->CONTENT_URI:Landroid/net/Uri;

    .line 423
    const-string v0, "music_song"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;->TYPE_DIRS:Ljava/lang/String;

    .line 424
    const-string v0, "music_song"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;->TYPE_ITEM:Ljava/lang/String;

    .line 437
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "music_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "singer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "format"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sharer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "release_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "file_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "downloads"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
