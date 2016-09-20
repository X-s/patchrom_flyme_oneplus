.class Lcom/oneplus/camera/media/YuvToBitmapWorker$1;
.super Ljava/lang/Object;
.source "YuvToBitmapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/YuvToBitmapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker$1;->this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/camera/media/YuvToBitmapWorker$1;->this$0:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    # invokes: Lcom/oneplus/camera/media/YuvToBitmapWorker;->notifyListener()V
    invoke-static {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->access$000(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V

    .line 61
    return-void
.end method
