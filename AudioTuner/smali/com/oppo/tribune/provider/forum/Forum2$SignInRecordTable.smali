.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;
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
    name = "SignInRecordTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REMEMBER_PASSWORD:Ljava/lang/String; = "remember_password"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "signin_record"

.field public static final TOKEN_SIGNIN:Ljava/lang/String; = "auto_signin"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 447
    const-string v0, "signin_record"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->CONTENT_URI:Landroid/net/Uri;

    .line 448
    const-string v0, "signin_record"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->TYPE_DIRS:Ljava/lang/String;

    .line 449
    const-string v0, "signin_record"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->TYPE_ITEM:Ljava/lang/String;

    .line 457
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "remember_password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "auto_signin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
