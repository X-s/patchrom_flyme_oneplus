.class Lcom/oneplus/camera/CameraThread$28;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$flags"    # I

    .prologue
    .line 2685
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$28;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$28;->val$camera:Lcom/oneplus/camera/Camera;

    iput p3, p0, Lcom/oneplus/camera/CameraThread$28;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$28;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$28;->val$camera:Lcom/oneplus/camera/Camera;

    iget v2, p0, Lcom/oneplus/camera/CameraThread$28;->val$flags:I

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->-wrap2(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)Z

    .line 2688
    return-void
.end method
