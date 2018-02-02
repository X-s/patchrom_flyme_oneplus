.class Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$1;
.super Ljava/lang/Object;
.source "FlipBlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;->-wrap0(Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;)V

    .line 20
    return-void
.end method
