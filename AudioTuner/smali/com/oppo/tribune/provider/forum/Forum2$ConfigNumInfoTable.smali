.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;
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
    name = "ConfigNumInfoTable"
.end annotation


# static fields
.field public static final BRAND_ID:Ljava/lang/String; = "brand_id"

.field public static final CONFIG_NUM:Ljava/lang/String; = "config_num"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REQUEST_NUM:Ljava/lang/String; = "request_num"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "config_num"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ID:Ljava/lang/String; = "type_id"

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 868
    const-string v0, "config_num"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;->CONTENT_URI:Landroid/net/Uri;

    .line 869
    const-string v0, "config_num"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;->TYPE_DIRS:Ljava/lang/String;

    .line 870
    const-string v0, "config_num"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;->TYPE_ITEM:Ljava/lang/String;

    .line 878
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "config_num"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "brand_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "request_num"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
