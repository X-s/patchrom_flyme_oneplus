.class Lcom/oneplus/camera/CameraThread$32;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->startCameraPreview(Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z
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

.field final synthetic val$resolution:Lcom/oneplus/camera/media/Resolution;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$previewSize"    # Landroid/util/Size;
    .param p4, "val$resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p5, "val$receiver"    # Ljava/lang/Object;
    .param p6, "val$flags"    # I

    .prologue
    .line 3410
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$32;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$32;->val$camera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/CameraThread$32;->val$previewSize:Landroid/util/Size;

    iput-object p4, p0, Lcom/oneplus/camera/CameraThread$32;->val$resolution:Lcom/oneplus/camera/media/Resolution;

    iput-object p5, p0, Lcom/oneplus/camera/CameraThread$32;->val$receiver:Ljava/lang/Object;

    iput p6, p0, Lcom/oneplus/camera/CameraThread$32;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$32;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$32;->val$camera:Lcom/oneplus/camera/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/CameraThread$32;->val$previewSize:Landroid/util/Size;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread$32;->val$resolution:Lcom/oneplus/camera/media/Resolution;

    iget-object v4, p0, Lcom/oneplus/camera/CameraThread$32;->val$receiver:Ljava/lang/Object;

    iget v5, p0, Lcom/oneplus/camera/CameraThread$32;->val$flags:I

    invoke-static/range {v0 .. v5}, Lcom/oneplus/camera/CameraThread;->-wrap4(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;Ljava/lang/Object;I)Z

    .line 3413
    return-void
.end method
