.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;
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
    name = "StoreTable"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "addr"

.field public static final AREA_ID:Ljava/lang/String; = "area_id"

.field public static final AREA_NAME:Ljava/lang/String; = "areaname"

.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final CITY_NAME:Ljava/lang/String; = "cityname"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COORDINATE:Ljava/lang/String; = "coordinate"

.field public static final HAS_PIC:Ljava/lang/String; = "haspic"

.field public static final IS_SHOW:Ljava/lang/String; = "isshow"

.field public static final NET_NAME:Ljava/lang/String; = "netname"

.field public static final NTYPE:Ljava/lang/String; = "ntype"

.field public static final OTHER_INFO:Ljava/lang/String; = "otherinfo"

.field public static final PHONE_NUM:Ljava/lang/String; = "phone_number"

.field public static final PIC_URL:Ljava/lang/String; = "pic_url"

.field public static final POSTAL:Ljava/lang/String; = "postal"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SORT_ORDER:Ljava/lang/String; = "sid ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "store_info"

.field public static final TRAFFIC:Ljava/lang/String; = "traffic"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final WEIGHT:Ljava/lang/String; = "weight"

.field public static final WORKTIME:Ljava/lang/String; = "worktime"

.field public static final ZOOM:Ljava/lang/String; = "zoom"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 815
    const-string v0, "store_info"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;->CONTENT_URI:Landroid/net/Uri;

    .line 816
    const-string v0, "store_info"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;->TYPE_DIRS:Ljava/lang/String;

    .line 817
    const-string v0, "store_info"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;->TYPE_ITEM:Ljava/lang/String;

    .line 839
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "areaname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "area_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cityname"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "city_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "netname"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "addr"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ntype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "otherinfo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weight"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "coordinate"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "haspic"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "zoom"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "traffic"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "postal"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "worktime"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "isshow"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pic_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
