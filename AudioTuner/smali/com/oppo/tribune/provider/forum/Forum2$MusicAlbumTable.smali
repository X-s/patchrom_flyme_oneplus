.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;
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
    name = "MusicAlbumTable"
.end annotation


# static fields
.field public static final ALBUME_ID:Ljava/lang/String; = "album_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COVER_URL:Ljava/lang/String; = "cover_url"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RELEASE_TIME:Ljava/lang/String; = "release_time"

.field public static final SHARER:Ljava/lang/String; = "sharer"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "music_album"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 399
    const-string v0, "music_album"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;->CONTENT_URI:Landroid/net/Uri;

    .line 400
    const-string v0, "music_album"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;->TYPE_DIRS:Ljava/lang/String;

    .line 401
    const-string v0, "music_album"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;->TYPE_ITEM:Ljava/lang/String;

    .line 411
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sharer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "release_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "page"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
