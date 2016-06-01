.class final Lcom/oppo/tribune/cache/BitmapEntity$1;
.super Ljava/lang/Object;
.source "BitmapEntity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/cache/BitmapEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oppo/tribune/cache/BitmapEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oppo/tribune/cache/BitmapEntity;Lcom/oppo/tribune/cache/BitmapEntity;)I
    .locals 5
    .param p1, "obj1"    # Lcom/oppo/tribune/cache/BitmapEntity;
    .param p2, "obj2"    # Lcom/oppo/tribune/cache/BitmapEntity;

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/oppo/tribune/cache/BitmapEntity;->getReadTime()J

    move-result-wide v0

    .line 225
    .local v0, "time1":J
    invoke-virtual {p2}, Lcom/oppo/tribune/cache/BitmapEntity;->getReadTime()J

    move-result-wide v2

    .line 227
    .local v2, "time2":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, Lcom/oppo/tribune/cache/BitmapEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oppo/tribune/cache/BitmapEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oppo/tribune/cache/BitmapEntity$1;->compare(Lcom/oppo/tribune/cache/BitmapEntity;Lcom/oppo/tribune/cache/BitmapEntity;)I

    move-result v0

    return v0
.end method
