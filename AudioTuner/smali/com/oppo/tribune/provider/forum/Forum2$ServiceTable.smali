.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;
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
    name = "ServiceTable"
.end annotation


# static fields
.field public static final ADDR:Ljava/lang/String; = "addr"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COORDINAME:Ljava/lang/String; = "coordinate"

.field public static final NETNAME:Ljava/lang/String; = "netname"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROVINCE:Ljava/lang/String; = "province"

.field public static final SORT_ORDER:Ljava/lang/String; = "city ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "service"

.field public static final TRAFFIC:Ljava/lang/String; = "traffic"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final WORKTIME:Ljava/lang/String; = "worktime"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 748
    const-string v0, "service"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;->CONTENT_URI:Landroid/net/Uri;

    .line 749
    const-string v0, "service"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;->TYPE_DIRS:Ljava/lang/String;

    .line 750
    const-string v0, "service"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;->TYPE_ITEM:Ljava/lang/String;

    .line 764
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "province"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "netname"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "addr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "coordinate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "traffic"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "worktime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
