.class Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;
.super Landroid/os/HandlerThread;
.source "FileManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/io/FileManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeBitmapThread"
.end annotation


# static fields
.field private static final OFFSET:I = 0x2


# instance fields
.field final TAG:Ljava/lang/String;

.field private m_Current:I

.field private m_Handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/oneplus/camera/io/FileManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    .line 577
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 571
    const-class v0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    .line 578
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;

    .prologue
    .line 570
    iget v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;
    .param p1, "x1"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I

    return p1
.end method

.method static synthetic access$2700(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;
    .param p1, "x1"    # I

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->checkInterrupt(I)Z

    move-result v0

    return v0
.end method

.method private checkInterrupt(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 585
    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InsertQueue size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    # getter for: Lcom/oneplus/camera/io/FileManagerImpl;->m_InsertQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/oneplus/camera/io/FileManagerImpl;->access$800(Lcom/oneplus/camera/io/FileManagerImpl;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  position:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I

    add-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Current:I

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 592
    invoke-virtual {p0}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 594
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread$1;-><init>(Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$DecodeBitmapThread;->m_Handler:Landroid/os/Handler;

    .line 653
    return-void
.end method
