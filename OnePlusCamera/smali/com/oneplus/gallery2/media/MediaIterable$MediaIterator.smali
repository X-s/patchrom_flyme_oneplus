.class final Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;
.super Ljava/lang/Object;
.source "MediaIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/oneplus/gallery2/media/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private m_Next:Lcom/oneplus/gallery2/media/Media;

.field private m_SubIterableIndex:I

.field private m_SubIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaIterable;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/media/MediaIterable;)V
    .locals 1

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->this$0:Lcom/oneplus/gallery2/media/MediaIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterableIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/media/MediaIterable;Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;-><init>(Lcom/oneplus/gallery2/media/MediaIterable;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    :goto_0
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterableIndex:I

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->this$0:Lcom/oneplus/gallery2/media/MediaIterable;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaIterable;->access$0(Lcom/oneplus/gallery2/media/MediaIterable;)[Ljava/lang/Iterable;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_Next:Lcom/oneplus/gallery2/media/Media;

    .line 41
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->this$0:Lcom/oneplus/gallery2/media/MediaIterable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_Next:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/media/MediaIterable;->filterMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    iput-object v3, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_Next:Lcom/oneplus/gallery2/media/Media;

    goto :goto_1

    .line 32
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterableIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterableIndex:I

    .line 33
    iget v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterableIndex:I

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->this$0:Lcom/oneplus/gallery2/media/MediaIterable;

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MediaIterable;->access$0(Lcom/oneplus/gallery2/media/MediaIterable;)[Ljava/lang/Iterable;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 47
    :cond_1
    return v2

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->this$0:Lcom/oneplus/gallery2/media/MediaIterable;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaIterable;->access$0(Lcom/oneplus/gallery2/media/MediaIterable;)[Ljava/lang/Iterable;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterableIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterator:Ljava/util/Iterator;

    goto :goto_1

    .line 42
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_4
    iput-object v3, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_SubIterator:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Lcom/oneplus/gallery2/media/Media;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_Next:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_Next:Lcom/oneplus/gallery2/media/Media;

    .line 57
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->m_Next:Lcom/oneplus/gallery2/media/Media;

    .line 58
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "No next media"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaIterable$MediaIterator;->next()Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Cannot remove media"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
