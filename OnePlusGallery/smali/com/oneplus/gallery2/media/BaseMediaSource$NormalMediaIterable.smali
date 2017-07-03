.class public Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;
.super Lcom/oneplus/gallery2/media/MediaIterable;
.source "BaseMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NormalMediaIterable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSource;Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V
    .locals 0
    .param p2, "targetType"    # Lcom/oneplus/gallery2/media/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/oneplus/gallery2/media/Media;>;"
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery2/media/MediaIterable;-><init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected filterMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/MediaIterable;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSource$NormalMediaIterable;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSource;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSource;->isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
