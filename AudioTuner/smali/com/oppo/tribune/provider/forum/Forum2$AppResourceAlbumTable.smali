.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;
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
    name = "AppResourceAlbumTable"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final APK_TYPE:Ljava/lang/String; = "apk_type"

.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final MCIMG:Ljava/lang/String; = "mcimg"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RELEASE_TIME:Ljava/lang/String; = "releasetime"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "app_resource_album"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 292
    const-string v0, "app_resource_album"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;->CONTENT_URI:Landroid/net/Uri;

    .line 293
    const-string v0, "app_resource_album"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;->TYPE_DIRS:Ljava/lang/String;

    .line 294
    const-string v0, "app_resource_album"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;->TYPE_ITEM:Ljava/lang/String;

    .line 306
    const/16 v0, 0xa

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

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "author"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mcimg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "releasetime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "detail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "apk_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "page"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
