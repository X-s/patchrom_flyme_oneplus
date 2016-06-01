.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;
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
    name = "SimpleThreadTable"
.end annotation


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final AUTHOR_ID:Ljava/lang/String; = "authorid"

.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final COMMON_FORUMNAME:Ljava/lang/String; = "common_forumname"

.field public static final COMMON_PICURL:Ljava/lang/String; = "common_picurl"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATELINE:Ljava/lang/String; = "dateline"

.field public static final DOWNLOAD_NUM:Ljava/lang/String; = "download_num"

.field public static final FID:Ljava/lang/String; = "fid"

.field public static final FID_TYPE:Ljava/lang/String; = "fidtype"

.field public static final GROUP_ID:Ljava/lang/String; = "groupid"

.field public static final IMG:Ljava/lang/String; = "imgs"

.field public static final ISLIKE:Ljava/lang/String; = "islike"

.field public static final IS_FOLLOWING:Ljava/lang/String; = "isfollowing"

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PRAISE:Ljava/lang/String; = "praise"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REPLIES:Ljava/lang/String; = "replies"

.field public static final SORT_ORDER:Ljava/lang/String; = "page ASC,_id ASC"

.field public static final SOURCE_TYPE:Ljava/lang/String; = "sourcetype"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TABLE_NAME:Ljava/lang/String; = "simple_thread"

.field public static final TID:Ljava/lang/String; = "tid"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final VIEWS:Ljava/lang/String; = "views"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "simple_thread"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;->CONTENT_URI:Landroid/net/Uri;

    .line 223
    const-string v0, "simple_thread"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;->TYPE_DIRS:Ljava/lang/String;

    .line 224
    const-string v0, "simple_thread"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;->TYPE_ITEM:Ljava/lang/String;

    .line 254
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fidtype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "author"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "authorid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "groupid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isfollowing"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dateline"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "replies"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "attachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fid"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "views"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "praise"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "islike"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "imgs"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "common_forumname"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "common_picurl"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "category_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "download_num"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "local"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
