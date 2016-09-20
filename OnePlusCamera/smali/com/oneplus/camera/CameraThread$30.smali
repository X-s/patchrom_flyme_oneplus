.class Lcom/oneplus/camera/CameraThread$30;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$flags:I

.field final synthetic val$previewSize:Landroid/util/Size;

.field final synthetic val$receiver:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$30;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$30;->val$camera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/CameraThread$30;->val$previewSize:Landroid/util/Size;

    iput-object p4, p0, Lcom/oneplus/camera/CameraThread$30;->val$receiver:Ljava/lang/Object;

    iput p5, p0, Lcom/oneplus/camera/CameraThread$30;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$30;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$30;->val$camera:Lcom/oneplus/camera/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread$30;->val$previewSize:Landroid/util/Size;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread$30;->val$receiver:Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/camera/CameraThread$30;->val$flags:I

    # invokes: Lcom/oneplus/camera/CameraThread;->startCameraPreviewInternal(Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/CameraThread;->access$3300(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Ljava/lang/Object;I)Z

    .line 2990
    return-void
.end method
