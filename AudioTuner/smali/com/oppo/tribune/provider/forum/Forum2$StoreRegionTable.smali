.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;
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
    name = "StoreRegionTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REGION_ID:Ljava/lang/String; = "region_id"

.field public static final REGION_NAME:Ljava/lang/String; = "region_name"

.field public static final REGION_TYPE:Ljava/lang/String; = "region_type"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "store_region"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 850
    const-string v0, "store_region"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;->CONTENT_URI:Landroid/net/Uri;

    .line 851
    const-string v0, "store_region"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;->TYPE_DIRS:Ljava/lang/String;

    .line 852
    const-string v0, "store_region"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;->TYPE_ITEM:Ljava/lang/String;

    .line 859
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "region_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "region_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "parent_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "region_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
