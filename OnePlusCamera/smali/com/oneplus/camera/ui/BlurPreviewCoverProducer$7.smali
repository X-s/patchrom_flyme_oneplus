.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onPreviewCoverPrepared(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-wrap1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 205
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewCoverPrepared() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    sget-object v3, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", keep current state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
