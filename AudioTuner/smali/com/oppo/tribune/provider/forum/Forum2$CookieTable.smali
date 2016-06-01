.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;
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
    name = "CookieTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SORT_ORDER:Ljava/lang/String; = "name ASC, value ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "cookie"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const-string v0, "cookie"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;->CONTENT_URI:Landroid/net/Uri;

    .line 115
    const-string v0, "cookie"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;->TYPE_DIRS:Ljava/lang/String;

    .line 116
    const-string v0, "cookie"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;->TYPE_ITEM:Ljava/lang/String;

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "domain"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
