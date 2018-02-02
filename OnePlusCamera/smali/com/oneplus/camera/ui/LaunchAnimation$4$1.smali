.class Lcom/oneplus/camera/ui/LaunchAnimation$4$1;
.super Ljava/lang/Object;
.source "LaunchAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LaunchAnimation$4;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/LaunchAnimation$4;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$height:I

.field final synthetic val$width:I

.field final synthetic val$yuv:[B


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LaunchAnimation$4;Lcom/oneplus/camera/Camera;[BII)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/LaunchAnimation$4;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$yuv"    # [B
    .param p4, "val$width"    # I
    .param p5, "val$height"    # I

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->this$1:Lcom/oneplus/camera/ui/LaunchAnimation$4;

    iput-object p2, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$camera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$yuv:[B

    iput p4, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$width:I

    iput p5, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->this$1:Lcom/oneplus/camera/ui/LaunchAnimation$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/LaunchAnimation$4;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$camera:Lcom/oneplus/camera/Camera;

    iget-object v2, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$yuv:[B

    iget v3, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$width:I

    iget v4, p0, Lcom/oneplus/camera/ui/LaunchAnimation$4$1;->val$height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/camera/ui/LaunchAnimation;->-wrap3(Lcom/oneplus/camera/ui/LaunchAnimation;Lcom/oneplus/camera/Camera;[BII)V

    .line 142
    return-void
.end method
