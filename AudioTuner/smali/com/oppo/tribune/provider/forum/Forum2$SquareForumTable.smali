.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;
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
    name = "SquareForumTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ICONURL:Ljava/lang/String; = "icon_url"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_POST:Ljava/lang/String; = "ispost"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RELATE_ID:Ljava/lang/String; = "relateid"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "square_forum"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOPIC:Ljava/lang/String; = "topic"

.field public static final TOPIC_ID:Ljava/lang/String; = "topicid"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "square_forum"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;->CONTENT_URI:Landroid/net/Uri;

    .line 267
    const-string v0, "square_forum"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;->TYPE_DIRS:Ljava/lang/String;

    .line 268
    const-string v0, "square_forum"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;->TYPE_ITEM:Ljava/lang/String;

    .line 282
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "relateid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "topicid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "topic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ispost"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "position"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mobile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
