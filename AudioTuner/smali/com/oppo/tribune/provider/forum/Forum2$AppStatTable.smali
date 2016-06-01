.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;
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
    name = "AppStatTable"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOWN_NEED_STAT:Ljava/lang/String; = "down_need_stat"

.field public static final NEARME_ID:Ljava/lang/String; = "nearme_id"

.field public static final POOR:Ljava/lang/String; = "poor"

.field public static final PRAISE:Ljava/lang/String; = "praise"

.field public static final PRAISE_POOR:Ljava/lang/String; = "praise_poor"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RECORD_TIME:Ljava/lang/String; = "record_time"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final STAT_TYPE:Ljava/lang/String; = "stat_type"

.field public static final TABLE_NAME:Ljava/lang/String; = "app_stat"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 375
    const-string v0, "app_stat"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;->CONTENT_URI:Landroid/net/Uri;

    .line 376
    const-string v0, "app_stat"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;->TYPE_DIRS:Ljava/lang/String;

    .line 377
    const-string v0, "app_stat"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;->TYPE_ITEM:Ljava/lang/String;

    .line 388
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "stat_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nearme_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "praise"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "praise_poor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "down_need_stat"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "record_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
