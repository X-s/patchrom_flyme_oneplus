.class Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;
.super Ljava/lang/Object;
.source "BlurPreviewCoverProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->onFadeInAnimationEnd()V
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
    .line 135
    iput-object p1, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer$6;->this$0:Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    sget-object v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;->-wrap1(Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method
