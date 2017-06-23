.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mFormat:I

.field private mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNativeBuffer:J

.field private mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;I)V
    .locals 2
    .param p2, "format"    # I

    .prologue
    const/4 v1, 0x0

    .line 654
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 843
    iput v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 845
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 655
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 656
    return-void
.end method

.method static synthetic access$000(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 653
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 653
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # Z

    .prologue
    .line 653
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setDetached(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/ImageReader$SurfaceImage;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 653
    invoke-direct {p0, p1, p2}, Landroid/media/ImageReader$SurfaceImage;->nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private clearSurfacePlanes()V
    .locals 3

    .prologue
    .line 761
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_1

    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 763
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    # invokes: Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->access$600(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 765
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 762
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private createSurfacePlanes()V
    .locals 3

    .prologue
    .line 772
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$700(Landroid/media/ImageReader;)I

    move-result v1

    new-array v1, v1, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$700(Landroid/media/ImageReader;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 774
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mFormat:I
    invoke-static {v2}, Landroid/media/ImageReader;->access$800(Landroid/media/ImageReader;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v2

    aput-object v2, v1, v0

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    return-void
.end method

.method private synchronized native declared-synchronized nativeCreatePlane(II)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetFormat(I)I
.end method

.method private synchronized native declared-synchronized nativeGetHeight(I)I
.end method

.method private synchronized native declared-synchronized nativeGetWidth(I)I
.end method

.method private synchronized native declared-synchronized nativeImageGetBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method private setDetached(Z)V
    .locals 1
    .param p1, "detached"    # Z

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 757
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 758
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # invokes: Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V
    invoke-static {v0, p0}, Landroid/media/ImageReader;->access$500(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 663
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 731
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 735
    return-void

    .line 733
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 672
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    .line 674
    .local v0, "readerFormat":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .end local v0    # "readerFormat":I
    :goto_0
    iput v0, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    .line 676
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    return v1

    .line 674
    .restart local v0    # "readerFormat":I
    :cond_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeGetFormat(I)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 698
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 704
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    invoke-direct {p0, v1}, Landroid/media/ImageReader$SurfaceImage;->nativeGetHeight(I)I

    move-result v0

    .line 706
    .local v0, "height":I
    :goto_0
    return v0

    .line 701
    .end local v0    # "height":I
    :pswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    .line 702
    .restart local v0    # "height":I
    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getNativeContext()J
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 752
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mNativeBuffer:J

    return-wide v0
.end method

.method getOwner()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 746
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getOwner()Landroid/media/ImageReader;

    move-result-object v0

    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 725
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 712
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 683
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->getFormat()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 689
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage;->mFormat:I

    invoke-direct {p0, v1}, Landroid/media/ImageReader$SurfaceImage;->nativeGetWidth(I)I

    move-result v0

    .line 691
    .local v0, "width":I
    :goto_0
    return v0

    .line 686
    .end local v0    # "width":I
    :pswitch_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    .line 687
    .restart local v0    # "width":I
    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isAttachable()Z
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 740
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsDetached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestampNs"    # J

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 718
    iput-wide p1, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    .line 719
    return-void
.end method
