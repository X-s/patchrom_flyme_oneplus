.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;
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
    name = "UserCollTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATELINE:Ljava/lang/String; = "dateline"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DTITLE:Ljava/lang/String; = "dtitle"

.field public static final DURL:Ljava/lang/String; = "durl"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SORT_ORDER:Ljava/lang/String; = "page ASC,_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_collect"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 197
    const-string v0, "user_collect"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;->CONTENT_URI:Landroid/net/Uri;

    .line 198
    const-string v0, "user_collect"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;->TYPE_DIRS:Ljava/lang/String;

    .line 199
    const-string v0, "user_collect"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;->TYPE_ITEM:Ljava/lang/String;

    .line 213
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateline"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "durl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtitle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
