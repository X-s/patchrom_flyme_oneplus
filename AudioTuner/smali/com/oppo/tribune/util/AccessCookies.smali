.class public Lcom/oppo/tribune/util/AccessCookies;
.super Ljava/lang/Object;
.source "AccessCookies.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oppo/tribune/util/AccessCookies;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/AccessCookies;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized clear(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v2, Lcom/oppo/tribune/util/AccessCookies;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/CookieDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/CookieDao;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v2

    return-void

    .line 46
    .end local v0    # "dao":Lcom/oppo/tribune/provider/forum/dao/CookieDao;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized readCookie(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const-class v2, Lcom/oppo/tribune/util/AccessCookies;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/CookieDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/CookieDao;
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 41
    .end local v0    # "dao":Lcom/oppo/tribune/provider/forum/dao/CookieDao;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized writeCookie(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const-class v2, Lcom/oppo/tribune/util/AccessCookies;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->isNullOrEmpty(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    :goto_0
    monitor-exit v2

    return-void

    .line 36
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oppo/tribune/provider/forum/dao/CookieDao;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "dao":Lcom/oppo/tribune/provider/forum/dao/CookieDao;
    invoke-virtual {v0, p1}, Lcom/oppo/tribune/provider/forum/dao/CookieDao;->update(Ljava/util/List;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "dao":Lcom/oppo/tribune/provider/forum/dao/CookieDao;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
