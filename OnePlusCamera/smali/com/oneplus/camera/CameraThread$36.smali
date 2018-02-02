.class Lcom/oneplus/camera/CameraThread$36;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->stopCurrentPhotoCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 4095
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$36;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4100
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$36;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraThread;->stopCurrentPhotoCapture()V

    .line 4098
    return-void
.end method
