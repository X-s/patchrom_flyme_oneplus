.class public Lcom/oneplus/gallery2/ListChangeEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ListChangeEventArgs.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x10


# instance fields
.field private volatile m_EndIndex:I

.field private volatile m_IsFreeInstance:Z

.field private volatile m_StartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/gallery2/ListChangeEventArgs;->POOL:Ljava/util/Queue;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 32
    iput p1, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_StartIndex:I

    .line 33
    iput p2, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_EndIndex:I

    .line 34
    return-void
.end method

.method public static obtain(I)Lcom/oneplus/gallery2/ListChangeEventArgs;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 74
    invoke-static {p0, p0}, Lcom/oneplus/gallery2/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized obtain(II)Lcom/oneplus/gallery2/ListChangeEventArgs;
    .locals 3
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I

    .prologue
    .line 86
    const-class v2, Lcom/oneplus/gallery2/ListChangeEventArgs;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/ListChangeEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/ListChangeEventArgs;

    .line 87
    .local v0, "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    if-eqz v0, :cond_0

    .line 89
    iput p0, v0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_StartIndex:I

    .line 90
    iput p1, v0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_EndIndex:I

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_IsFreeInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit v2

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    new-instance v0, Lcom/oneplus/gallery2/ListChangeEventArgs;

    .end local v0    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    goto :goto_0

    .line 86
    .end local v0    # "e":Lcom/oneplus/gallery2/ListChangeEventArgs;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_EndIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    iget v1, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_EndIndex:I

    iget v2, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_StartIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_StartIndex:I

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 103
    const-class v1, Lcom/oneplus/gallery2/ListChangeEventArgs;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_IsFreeInstance:Z

    if-eqz v0, :cond_0

    .line 106
    monitor-exit v1

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/ListChangeEventArgs;->m_IsFreeInstance:Z

    .line 108
    sget-object v0, Lcom/oneplus/gallery2/ListChangeEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 109
    sget-object v0, Lcom/oneplus/gallery2/ListChangeEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
