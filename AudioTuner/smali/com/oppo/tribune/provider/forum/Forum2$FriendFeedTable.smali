.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;
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
    name = "FriendFeedTable"
.end annotation


# static fields
.field public static final AGE:Ljava/lang/String; = "age"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final CONS:Ljava/lang/String; = "constellation"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATELINE:Ljava/lang/String; = "dateline"

.field public static final EXT:Ljava/lang/String; = "ext"

.field public static final FEED_ID:Ljava/lang/String; = "feedid"

.field public static final HEAD_URL:Ljava/lang/String; = "headurl"

.field public static final IMG_LIST:Ljava/lang/String; = "imglist"

.field public static final ISLIKE:Ljava/lang/String; = "islike"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PRAISE:Ljava/lang/String; = "praise"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RELATE_ID:Ljava/lang/String; = "relateid"

.field public static final SHARE:Ljava/lang/String; = "share"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC,dateline DESC,page ASC"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_TYPE:Ljava/lang/String; = "sourcetype"

.field public static final SUB_TYPE:Ljava/lang/String; = "subtype"

.field public static final TABLE_NAME:Ljava/lang/String; = "friend_feed"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final USER_NAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 554
    const-string v0, "friend_feed"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->CONTENT_URI:Landroid/net/Uri;

    .line 555
    const-string v0, "friend_feed"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->TYPE_DIRS:Ljava/lang/String;

    .line 556
    const-string v0, "friend_feed"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->TYPE_ITEM:Ljava/lang/String;

    .line 581
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feedid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "relateid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "age"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "city"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "constellation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "headurl"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "imglist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dateline"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "share"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "praise"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "islike"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ext"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "subtype"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "page"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
