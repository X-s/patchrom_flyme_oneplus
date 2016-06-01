.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;
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
    name = "RemindCountTable"
.end annotation


# static fields
.field public static final COLL_COUNT:Ljava/lang/String; = "coll_count"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FOLLOWERS:Ljava/lang/String; = "followers"

.field public static final FOLLOWINGS:Ljava/lang/String; = "followings"

.field public static final FOLLOW_FEED:Ljava/lang/String; = "follow_feed"

.field public static final FRIEND:Ljava/lang/String; = "friend"

.field public static final ISSIGN:Ljava/lang/String; = "issign"

.field public static final OU_BI:Ljava/lang/String; = "ou_bi"

.field public static final PACK_REMIND:Ljava/lang/String; = "pack_remind"

.field public static final PACK_REPLY:Ljava/lang/String; = "pack_reply"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REPLY_COUNT:Ljava/lang/String; = "reply_count"

.field public static final SIGN_DAYS:Ljava/lang/String; = "sign_days"

.field public static final SIGN_LASTED:Ljava/lang/String; = "sign_lasted"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final SQUARE_REMIND:Ljava/lang/String; = "square_remind"

.field public static final TABLE_NAME:Ljava/lang/String; = "remind_count"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final VISITOR:Ljava/lang/String; = "visitor"

.field public static final YIN_FU:Ljava/lang/String; = "yin_fu"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 664
    const-string v0, "remind_count"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;->CONTENT_URI:Landroid/net/Uri;

    .line 665
    const-string v0, "remind_count"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;->TYPE_DIRS:Ljava/lang/String;

    .line 666
    const-string v0, "remind_count"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;->TYPE_ITEM:Ljava/lang/String;

    .line 684
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "friend"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visitor"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "square_remind"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pack_remind"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pack_reply"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "reply_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "coll_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ou_bi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "follow_feed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "followers"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "followings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "yin_fu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sign_days"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sign_lasted"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "issign"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
