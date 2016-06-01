.class public Lcom/oppo/tribune/provider/forum/Forum2;
.super Ljava/lang/Object;
.source "Forum2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$UserQuestionTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$ProductCenterTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$ReplyTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$PostTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$SearchRecordTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$LastSigninUserTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$CityTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$PackshowTopicTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$SquareAdvertiseTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$UserReplyTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$GalleryImgTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;,
        Lcom/oppo/tribune/provider/forum/Forum2$Names;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.oneplus.tuner.providers.forum2"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oppo/tribune/provider/forum/Forum2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/Forum2;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oppo/tribune/provider/forum/Forum2;->createContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oppo/tribune/provider/forum/Forum2;->createDirsType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oppo/tribune/provider/forum/Forum2;->createItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "table"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "com.oneplus.tuner.providers.forum2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static createDirsType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.oppo.cursor.dir/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createItemType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.oppo.cursor.item/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
