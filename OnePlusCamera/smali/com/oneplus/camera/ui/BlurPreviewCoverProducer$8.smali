.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;
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

.field final synthetic val$previewBounds:Landroid/graphics/RectF;

.field final synthetic val$previewFrame:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->val$previewFrame:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->val$previewBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 285
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->val$previewFrame:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->val$previewBounds:Landroid/graphics/RectF;

    # invokes: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->processImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$800(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    .local v0, "result":[Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    const/16 v2, 0x2711

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v6

    aput-object v4, v3, v6

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$8;->val$previewBounds:Landroid/graphics/RectF;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v6, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 289
    return-void
.end method
