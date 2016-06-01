.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;
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
    name = "ProvinceTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROVINCE_CODE:Ljava/lang/String; = "province_code"

.field public static final PROVINCE_NAME:Ljava/lang/String; = "province_name"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "province"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 613
    const-string v0, "province"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;->CONTENT_URI:Landroid/net/Uri;

    .line 614
    const-string v0, "province"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;->TYPE_DIRS:Ljava/lang/String;

    .line 615
    const-string v0, "province"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;->TYPE_ITEM:Ljava/lang/String;

    .line 620
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "province_code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "province_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
