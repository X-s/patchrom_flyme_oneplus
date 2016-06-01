.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;
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
    .line 72
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$4;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    # invokes: Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeOutAnimationStart()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->access$300(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;)V

    .line 77
    return-void
.end method
