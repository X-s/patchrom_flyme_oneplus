.class Lcom/oneplus/camera/ui/SwitchAnimationImpl$1;
.super Ljava/lang/Object;
.source "SwitchAnimationImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/SwitchAnimationImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SwitchAnimationImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SwitchAnimationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SwitchAnimationImpl;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/SwitchAnimationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/camera/ui/SwitchAnimationImpl$1;->this$0:Lcom/oneplus/camera/ui/SwitchAnimationImpl;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/ui/SwitchAnimationImpl;->-wrap0(Lcom/oneplus/camera/ui/SwitchAnimationImpl;Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V

    .line 174
    return-void
.end method
