.class public Lcom/oppo/tribune/provider/forum/ForumContentProvider2;
.super Landroid/content/ContentProvider;
.source "ForumContentProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;,
        Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mSQLiteOpenHelper:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    const-class v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->TAG:Ljava/lang/String;

    .line 296
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "forum_type"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$ForumTypeTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 298
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "cookie"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$CookieTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 300
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "gallery_img"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$GalleryImgTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$GalleryImgTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 302
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "user_replies"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$UserReplyTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$UserReplyTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 304
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "user_collect"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$UserCollTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 306
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "simple_thread"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$SimpleThreadTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 308
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "square_forum"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$SquareForumTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 310
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "app_resource_album"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceAlbumTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 313
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "app_resource"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$AppResourceTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 315
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "app_screen_shot"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$AppScreenShotTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 317
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "app_stat"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$AppStatTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 319
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "music_album"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$MusicAlbumTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 321
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "music_song"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$MusicSongTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 323
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "signin_record"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$SignInRecordTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 325
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "square_advertise"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$SquareAdvertiseTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$SquareAdvertiseTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 327
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "friend"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$FriendsTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 329
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "signin_user"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$SignInUserTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 331
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "friend_feed"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 333
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "packshow_topic"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$FriendFeedTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 335
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "province"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$ProvinceTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 337
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "city"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$CityTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$CityTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 339
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "last_user_signin"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$LastSigninUserTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$LastSigninUserTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 341
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "remind_count"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$RemindCountTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 343
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "search_record"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$SearchRecordTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$SearchRecordTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 345
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "product_center"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$ProductCenterTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$ProductCenterTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 347
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "service"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$ServiceTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 349
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "store_info"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$StoreTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 351
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "store_region"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$StoreRegionTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 353
    new-instance v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    const-string v1, "config_num"

    sget-object v2, Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;->TYPE_DIRS:Ljava/lang/String;

    sget-object v3, Lcom/oppo/tribune/provider/forum/Forum2$ConfigNumInfoTable;->TYPE_ITEM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V

    .line 355
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    return-void
.end method

.method private appendSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 207
    .local v2, "id":J
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_0
    return-object v1

    .line 210
    :cond_0
    new-instance v0, Lcom/oppo/tribune/provider/Condition;

    invoke-direct {v0, p2}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "condition":Lcom/oppo/tribune/provider/Condition;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    .line 212
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/Condition;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private notifyUriChange(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 203
    return-void
.end method

.method private tableDeleteRecord(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getDatabaseForum2()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "n":I
    if-lez v1, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->notifyUriChange(Landroid/net/Uri;)V

    .line 196
    :cond_0
    return v1
.end method

.method private tableInsertValues(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getDatabaseForum2()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 170
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p2, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 171
    .local v2, "id":J
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 174
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 176
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-object p1
.end method

.method private tableUpdateValues(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "whereClause"    # [Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getDatabaseForum2()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "n":I
    if-lez v1, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->notifyUriChange(Landroid/net/Uri;)V

    .line 186
    :cond_0
    return v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getDatabaseForum2()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 100
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 101
    .local v1, "r":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1    # "r":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->match(Landroid/net/Uri;)Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    move-result-object v0

    .line 158
    .local v0, "item":Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 160
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->getMatchType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->appendSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 164
    :cond_0
    # getter for: Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->access$000(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->tableDeleteRecord(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 158
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDatabaseForum2()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->mSQLiteOpenHelper:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->match(Landroid/net/Uri;)Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    move-result-object v0

    .line 111
    .local v0, "item":Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->getType()Ljava/lang/String;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->match(Landroid/net/Uri;)Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    move-result-object v0

    .line 120
    .local v0, "item":Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 122
    # getter for: Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->access$000(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->tableInsertValues(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;->getSingleton(Landroid/content/Context;)Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->mSQLiteOpenHelper:Lcom/oppo/tribune/provider/forum/ForumSQliteOpenHelper;

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-static {p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->match(Landroid/net/Uri;)Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    move-result-object v8

    .line 129
    .local v8, "item":Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    if-eqz v8, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 131
    invoke-virtual {v8}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->getMatchType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 132
    invoke-direct {p0, p1, p3}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->appendSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 135
    :cond_0
    # getter for: Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;
    invoke-static {v8}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->access$000(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->getDatabaseForum2()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    # getter for: Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;
    invoke-static {v8}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->access$000(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move v1, v3

    .line 129
    goto :goto_0

    :cond_2
    move v2, v3

    .line 135
    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->match(Landroid/net/Uri;)Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    move-result-object v6

    .line 145
    .local v6, "item":Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 147
    invoke-virtual {v6}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->getMatchType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0, p1, p3}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->appendSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 151
    :cond_0
    # getter for: Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;
    invoke-static {v6}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->access$000(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2;->tableUpdateValues(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
