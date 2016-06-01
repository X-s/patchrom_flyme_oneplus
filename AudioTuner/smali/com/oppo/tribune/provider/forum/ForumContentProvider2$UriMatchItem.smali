.class Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
.super Ljava/lang/Object;
.source "ForumContentProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/provider/forum/ForumContentProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriMatchItem"
.end annotation


# static fields
.field public static final MATCH_TYPE_DIRS:I = 0x1

.field public static final MATCH_TYPE_ITEM:I = 0x2

.field public static final MATCH_TYPE_NONE:I

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDirsTarget:I

.field private final mDirsType:Ljava/lang/String;

.field private final mItemTarget:I

.field private final mItemType:Ljava/lang/String;

.field private mMatchType:I

.field private final mTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sMap:Ljava/util/HashMap;

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 276
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->URI_MATCHER:Landroid/content/UriMatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "dirsType"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mMatchType:I

    .line 230
    iput-object p1, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mDirsType:Ljava/lang/String;

    .line 232
    sget-object v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mDirsTarget:I

    .line 233
    iput-object p3, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mItemType:Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mItemTarget:I

    .line 236
    invoke-static {p0}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->add(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)V

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/oppo/tribune/provider/forum/ForumContentProvider2$1;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method private static add(Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;)V
    .locals 6
    .param p0, "item"    # Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    .prologue
    .line 280
    sget-object v1, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mDirsTarget:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mItemTarget:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, "com.oneplus.tuner.providers.forum2"

    .line 284
    .local v0, "authority":Ljava/lang/String;
    sget-object v1, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.oneplus.tuner.providers.forum2"

    iget-object v3, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mTable:Ljava/lang/String;

    iget v4, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mDirsTarget:I

    iget v5, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mItemTarget:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->addURIMatcher(Landroid/content/UriMatcher;Ljava/lang/String;Ljava/lang/String;II)V

    .line 286
    return-void
.end method

.method private static addURIMatcher(Landroid/content/UriMatcher;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p0, "matcher"    # Landroid/content/UriMatcher;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "dirTarget"    # I
    .param p4, "itemTarget"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    return-void
.end method

.method public static match(Landroid/net/Uri;)Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    sget-object v2, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 258
    .local v1, "target":I
    sget-object v2, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->sMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;

    .line 259
    .local v0, "item":Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;
    if-eqz v0, :cond_0

    .line 260
    iget v2, v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mDirsTarget:I

    if-ne v1, v2, :cond_1

    .line 261
    const/4 v2, 0x1

    iput v2, v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mMatchType:I

    .line 269
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :cond_1
    iget v2, v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mItemTarget:I

    if-ne v1, v2, :cond_2

    .line 263
    const/4 v2, 0x2

    iput v2, v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mMatchType:I

    goto :goto_0

    .line 265
    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mMatchType:I

    goto :goto_0
.end method


# virtual methods
.method public getMatchType()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mMatchType:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mMatchType:I

    packed-switch v0, :pswitch_data_0

    .line 248
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mDirsType:Ljava/lang/String;

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/ForumContentProvider2$UriMatchItem;->mItemType:Ljava/lang/String;

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
