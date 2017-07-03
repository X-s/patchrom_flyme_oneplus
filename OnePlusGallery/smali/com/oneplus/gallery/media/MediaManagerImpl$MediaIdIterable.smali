.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaIdIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_MediaType:Lcom/oneplus/gallery/media/MediaType;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 0
    .param p2, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 608
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIterable;->m_MediaType:Lcom/oneplus/gallery/media/MediaType;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaIdIteratorImpl;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V

    return-object v0
.end method
