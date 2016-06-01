.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onRelease()V
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

    .prologue
    .line 224
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    iget-object v1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$7;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # getter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$700(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->m_RenderScriptHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$702(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 229
    return-void
.end method
