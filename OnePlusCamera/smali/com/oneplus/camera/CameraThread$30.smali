.class Lcom/oneplus/camera/CameraThread$30;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->prepareMediaRecorder(Lcom/oneplus/camera/Camera;Landroid/media/MediaRecorder;Lcom/oneplus/camera/CameraThread$VideoParams;)Z
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
    .line 3186
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$30;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$30;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/camera/CameraThread;->-wrap18(Lcom/oneplus/camera/CameraThread;Landroid/media/MediaRecorder;II)V

    .line 3189
    return-void
.end method
