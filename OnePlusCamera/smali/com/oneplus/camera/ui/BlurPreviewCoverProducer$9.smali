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

.field final synthetic val$previewBounds:Landroid/graphics/RectF;

.field final synthetic val$previewFrame:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
    .param p2, "val$previewFrame"    # Landroid/graphics/Bitmap;
    .param p3, "val$previewBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iput-object p2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewFrame:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 284
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewFrame:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    invoke-static {v1, v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-wrap0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .local v0, "result":[Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$9;->val$previewBounds:Landroid/graphics/RectF;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/16 v3, 0x2711

    invoke-static {v1, v3, v5, v5, v2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 281
    return-void
.end method
