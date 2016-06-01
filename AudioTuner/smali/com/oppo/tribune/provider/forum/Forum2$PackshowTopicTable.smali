.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;
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
    name = "PackshowTopicTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PIC:Ljava/lang/String; = "pic"

.field public static final PIC1:Ljava/lang/String; = "pic1"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "packshow_topic"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 593
    const-string v0, "packshow_topic"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;->CONTENT_URI:Landroid/net/Uri;

    .line 594
    const-string v0, "packshow_topic"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;->TYPE_DIRS:Ljava/lang/String;

    .line 595
    const-string v0, "packshow_topic"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;->TYPE_ITEM:Ljava/lang/String;

    .line 604
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pic"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pic1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "page"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
