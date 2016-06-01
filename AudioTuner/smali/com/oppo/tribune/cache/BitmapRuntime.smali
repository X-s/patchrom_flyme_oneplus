.class public Lcom/oppo/tribune/cache/BitmapRuntime;
.super Ljava/lang/Object;
.source "BitmapRuntime.java"


# static fields
.field public static final MAX_SIZE:J = 0x1200000L

.field private static final MILLION_UNIT:J = 0x100000L

.field public static final MIN_SIZE:J = 0xc00000L

.field public static final TAG:Ljava/lang/String;

.field private static final singleton:Lcom/oppo/tribune/cache/BitmapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 23
    const-class v0, Lcom/oppo/tribune/cache/BitmapRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/oppo/tribune/cache/BitmapManager;

    const-wide/32 v2, 0xc00000

    const-wide/32 v4, 0x1200000

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/oppo/tribune/cache/BitmapManager;-><init>(JJ)V

    sput-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/cache/BitmapManager;->getBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestAlloc(I)V
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/cache/BitmapManager;->requestAlloc(J)V

    .line 37
    return-void
.end method

.method public static requestBigEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/cache/BitmapManager;->requestBigBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestClear()V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v0}, Lcom/oppo/tribune/cache/BitmapManager;->requestClear()V

    .line 69
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestClear:size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v2}, Lcom/oppo/tribune/cache/BitmapManager;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public static requestClear(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/cache/BitmapManager;->requestClear(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public static requestDlloc(I)V
    .locals 4
    .param p0, "size"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/oppo/tribune/cache/BitmapManager;->requestDlloc(J)V

    .line 41
    return-void
.end method

.method public static requestEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oppo/tribune/cache/BitmapRuntime;->singleton:Lcom/oppo/tribune/cache/BitmapManager;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/cache/BitmapManager;->requestBitmapEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;

    move-result-object v0

    goto :goto_0
.end method
