.class public interface abstract Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;
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
    name = "SignInUserTable"
.end annotation


# static fields
.field public static final AGE:Ljava/lang/String; = "age"

.field public static final BG_TYPE:Ljava/lang/String; = "bg_type"

.field public static final BG_URL:Ljava/lang/String; = "bg_url"

.field public static final BIRTH_DAY:Ljava/lang/String; = "birthday"

.field public static final BIRTH_MONTH:Ljava/lang/String; = "birthmonth"

.field public static final BIRTH_YEAR:Ljava/lang/String; = "birthyear"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONSTELLATION:Ljava/lang/String; = "constellation"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREDIT:Ljava/lang/String; = "credit"

.field public static final FOLLOWER:Ljava/lang/String; = "follower"

.field public static final FOLLOWING:Ljava/lang/String; = "following"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final HEAD_URL:Ljava/lang/String; = "headurl"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final LEVEL_NAME:Ljava/lang/String; = "levelname"

.field public static final LIKED_NUM:Ljava/lang/String; = "likednum"

.field public static final LIKES_NUM:Ljava/lang/String; = "likesnum"

.field public static final MOOD:Ljava/lang/String; = "mood"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final REAL_NAME:Ljava/lang/String; = "realname"

.field public static final SHARE_NUM:Ljava/lang/String; = "sharenum"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "signin_user"

.field public static final TYPE_DIRS:Ljava/lang/String;

.field public static final TYPE_ITEM:Ljava/lang/String;

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final USER_NAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 514
    const-string v0, "signin_user"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$000(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;->CONTENT_URI:Landroid/net/Uri;

    .line 515
    const-string v0, "signin_user"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;->TYPE_DIRS:Ljava/lang/String;

    .line 516
    const-string v0, "signin_user"

    # invokes: Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/Forum2;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;->TYPE_ITEM:Ljava/lang/String;

    .line 542
    const/16 v0, 0x17

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

    const-string v2, "realname"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "headurl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "constellation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "city"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "birthyear"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "birthmonth"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "birthday"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "age"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "level"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "levelname"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "credit"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "follower"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "following"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bg_url"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "mood"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sharenum"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "likednum"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "likesnum"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
