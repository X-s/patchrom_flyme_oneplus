.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;
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
    name = "AppResourceTable"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final APK_TYPE:Ljava/lang/String; = "apk_type"

.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DOWNLOADS:Ljava/lang/String; = "downloads"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final FILE_URL:Ljava/lang/String; = "file_url"

.field public static final ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final ISLIKE:Ljava/lang/String; = "islike"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NEARME_ID:Ljava/lang/String; = "nearme_id"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final POOR:Ljava/lang/String; = "poor"

.field public static final PRAISE:Ljava/lang/String; = "praise"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RELEASE_TIME:Ljava/lang/String; = "release_time"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "app_resource"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final VERSION_NUMBER:Ljava/lang/String; = "version_number"

.field public static final VIEWS:Ljava/lang/String; = "views"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 317
    const-string v0, "app_resource"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;->CONTENT_URI:Landroid/net/Uri;

    .line 318
    const-string v0, "app_resource"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;->TYPE_DIRS:Ljava/lang/String;

    .line 319
    const-string v0, "app_resource"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;->TYPE_ITEM:Ljava/lang/String;

    .line 342
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "version_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "version_number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "author"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "release_time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "downloads"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "views"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "file_url"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "apk_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "praise"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "poor"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "nearme_id"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "extra"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
