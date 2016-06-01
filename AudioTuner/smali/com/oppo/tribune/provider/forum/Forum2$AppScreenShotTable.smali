.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;
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
    name = "AppScreenShotTable"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final APK_TYPE:Ljava/lang/String; = "apk_type"

.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final BIG_URL:Ljava/lang/String; = "big_url"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MIDDLE_URL:Ljava/lang/String; = "middle_url"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SMALL_URL:Ljava/lang/String; = "small_url"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "app_screen_shot"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 354
    const-string v0, "app_screen_shot"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;->CONTENT_URI:Landroid/net/Uri;

    .line 355
    const-string v0, "app_screen_shot"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;->TYPE_DIRS:Ljava/lang/String;

    .line 356
    const-string v0, "app_screen_shot"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;->TYPE_ITEM:Ljava/lang/String;

    .line 365
    const/4 v0, 0x7

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

    const-string v2, "apk_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "small_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "middle_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "big_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
