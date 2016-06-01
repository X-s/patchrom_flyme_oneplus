.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->preparePreviewCover()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$previewBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/camera/Camera;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$camera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$900(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "preparePreviewCover() - Waiting for preview frame"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9$1;-><init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 375
    return-void
.end method
