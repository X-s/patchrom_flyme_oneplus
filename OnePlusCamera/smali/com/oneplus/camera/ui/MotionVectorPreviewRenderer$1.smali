.class Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$1;
.super Ljava/lang/Object;
.source "MotionVectorPreviewRenderer.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPreviewOverlay$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$1;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRender(Landroid/graphics/Canvas;Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/oneplus/camera/ui/CameraPreviewOverlay$RenderingParams;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$1;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->-wrap2(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method
