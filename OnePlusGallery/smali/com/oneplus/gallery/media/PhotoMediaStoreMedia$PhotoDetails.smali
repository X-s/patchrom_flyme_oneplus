.class final Lcom/oneplus/gallery/media/PhotoMediaStoreMedia$PhotoDetails;
.super Lcom/oneplus/gallery/media/SimpleMediaDetails;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/PhotoMediaDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/PhotoMediaStoreMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhotoDetails"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery/media/MediaDetails$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Lcom/oneplus/gallery/media/MediaDetails$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/SimpleMediaDetails;-><init>(Ljava/util/Map;)V

    .line 49
    return-void
.end method
