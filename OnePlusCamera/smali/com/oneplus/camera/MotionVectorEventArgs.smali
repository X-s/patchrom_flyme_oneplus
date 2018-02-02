.class public Lcom/oneplus/camera/MotionVectorEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MotionVectorEventArgs.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/camera/MotionVectorEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private volatile m_IsRecycled:Z

.field private volatile m_Vectors:[[Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/MotionVectorEventArgs;->POOL:Ljava/util/Queue;

    .line 11
    return-void
.end method

.method constructor <init>([[Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "vectors"    # [[Landroid/graphics/PointF;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oneplus/camera/MotionVectorEventArgs;->m_Vectors:[[Landroid/graphics/PointF;

    .line 27
    return-void
.end method

.method public static obtain([[Landroid/graphics/PointF;)Lcom/oneplus/camera/MotionVectorEventArgs;
    .locals 2
    .param p0, "vectors"    # [[Landroid/graphics/PointF;

    .prologue
    .line 51
    sget-object v1, Lcom/oneplus/camera/MotionVectorEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/MotionVectorEventArgs;

    .line 52
    .local v0, "eventArgs":Lcom/oneplus/camera/MotionVectorEventArgs;
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/oneplus/camera/MotionVectorEventArgs;

    .end local v0    # "eventArgs":Lcom/oneplus/camera/MotionVectorEventArgs;
    invoke-direct {v0, p0}, Lcom/oneplus/camera/MotionVectorEventArgs;-><init>([[Landroid/graphics/PointF;)V

    .line 56
    .restart local v0    # "eventArgs":Lcom/oneplus/camera/MotionVectorEventArgs;
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/MotionVectorEventArgs;->m_IsRecycled:Z

    goto :goto_0
.end method


# virtual methods
.method public getVectors()[[Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oneplus/camera/MotionVectorEventArgs;->m_IsRecycled:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current event args is already recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/MotionVectorEventArgs;->m_Vectors:[[Landroid/graphics/PointF;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/oneplus/camera/MotionVectorEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/MotionVectorEventArgs;->m_IsRecycled:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/MotionVectorEventArgs;->m_Vectors:[[Landroid/graphics/PointF;

    .line 70
    sget-object v0, Lcom/oneplus/camera/MotionVectorEventArgs;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method
