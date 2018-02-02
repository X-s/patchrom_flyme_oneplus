.class public Lcom/oneplus/gallery2/media/MediaIterable;
.super Ljava/lang/Object;
.source "MediaIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_SubIterables:[Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p2, :cond_0

    .line 81
    new-array v0, v1, [Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_SubIterables:[Ljava/lang/Iterable;

    .line 82
    :goto_0
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 83
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Ljava/lang/Iterable;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_SubIterables:[Ljava/lang/Iterable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaType;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_SubIterables:[Ljava/lang/Iterable;

    .line 98
    :goto_0
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 99
    return-void

    .line 95
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Iterable;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_SubIterables:[Ljava/lang/Iterable;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/MediaIterable;)[Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_SubIterables:[Ljava/lang/Iterable;

    return-object v0
.end method


# virtual methods
.method protected filterMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaIterable;->m_TargetMediaType:Lcom/oneplus/gallery2/media/MediaType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;-><init>(Lcom/oneplus/gallery2/media/MediaIterable;Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;)V

    return-object v0
.end method
