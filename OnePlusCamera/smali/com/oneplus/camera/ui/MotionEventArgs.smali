.class public Lcom/oneplus/camera/ui/MotionEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MotionEventArgs.java"

# interfaces
.implements Lcom/oneplus/base/RecyclableObject;


# static fields
.field private static final POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/oneplus/camera/ui/MotionEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x8


# instance fields
.field private volatile m_Action:I

.field private volatile m_IsFreeInstance:Z

.field private volatile m_MotionEvent:Landroid/view/MotionEvent;

.field private volatile m_PointerCount:I

.field private volatile m_X:F

.field private volatile m_Y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/oneplus/camera/ui/MotionEventArgs;->POOL:Ljava/util/ArrayDeque;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Landroid/view/MotionEvent;)Lcom/oneplus/camera/ui/MotionEventArgs;
    .locals 3
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    const-class v2, Lcom/oneplus/camera/ui/MotionEventArgs;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/MotionEventArgs;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/MotionEventArgs;

    .line 95
    .local v0, "e":Lcom/oneplus/camera/ui/MotionEventArgs;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/oneplus/camera/ui/MotionEventArgs;

    .end local v0    # "e":Lcom/oneplus/camera/ui/MotionEventArgs;
    invoke-direct {v0}, Lcom/oneplus/camera/ui/MotionEventArgs;-><init>()V

    .line 97
    .restart local v0    # "e":Lcom/oneplus/camera/ui/MotionEventArgs;
    :cond_0
    iput-object p0, v0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_MotionEvent:Landroid/view/MotionEvent;

    .line 98
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, v0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_Action:I

    .line 99
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, v0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_PointerCount:I

    .line 100
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_X:F

    .line 101
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_Y:F

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_IsFreeInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v2

    return-object v0

    .line 94
    .end local v0    # "e":Lcom/oneplus/camera/ui/MotionEventArgs;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final getAction()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_Action:I

    return v0
.end method

.method public final getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_MotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final getPointerCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_PointerCount:I

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_X:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_Y:F

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 112
    const-class v1, Lcom/oneplus/camera/ui/MotionEventArgs;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_IsFreeInstance:Z

    if-eqz v0, :cond_0

    .line 115
    monitor-exit v1

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_MotionEvent:Landroid/view/MotionEvent;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/MotionEventArgs;->m_IsFreeInstance:Z

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/MotionEventArgs;->clearHandledState()V

    .line 119
    sget-object v0, Lcom/oneplus/camera/ui/MotionEventArgs;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 120
    sget-object v0, Lcom/oneplus/camera/ui/MotionEventArgs;->POOL:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 121
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
