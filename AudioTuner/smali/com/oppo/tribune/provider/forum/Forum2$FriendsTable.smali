.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;
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
    name = "FriendsTable"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AGE:Ljava/lang/String; = "age"

.field public static final ATTENTED:Ljava/lang/String; = "attented"

.field public static final AVATAR:Ljava/lang/String; = "avatar"

.field public static final CONSTELLATION:Ljava/lang/String; = "constellation"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATELINE:Ljava/lang/String; = "dateline"

.field public static final FRIENDTYPE:Ljava/lang/String; = "friend_type"

.field public static final GROUPID:Ljava/lang/String; = "group_id"

.field public static final GROUPNAME:Ljava/lang/String; = "group_name"

.field public static final HOSTUID:Ljava/lang/String; = "host_uid"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "friend"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 485
    const-string v0, "friend"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;->CONTENT_URI:Landroid/net/Uri;

    .line 486
    const-string v0, "friend"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;->TYPE_DIRS:Ljava/lang/String;

    .line 487
    const-string v0, "friend"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;->TYPE_ITEM:Ljava/lang/String;

    .line 504
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "age"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sex"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "attented"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "group_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "constellation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dateline"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "avatar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "friend_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "host_uid"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "page"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
