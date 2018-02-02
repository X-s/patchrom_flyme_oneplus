.class public final Lcom/oneplus/gallery2/media/SimplePhotoMediaDetails;
.super Lcom/oneplus/gallery2/media/BaseMediaDetails;
.source "SimplePhotoMediaDetails.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMediaDetails;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaDetails;-><init>(Ljava/util/Map;)V

    .line 17
    return-void
.end method
