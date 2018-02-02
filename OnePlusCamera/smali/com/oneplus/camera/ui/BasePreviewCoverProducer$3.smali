.class Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;
.super Ljava/lang/Object;
.source "BasePreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/BasePreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/ui/CameraGallery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 88
    check-cast p1, Lcom/oneplus/camera/ui/CameraGallery;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;->onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/camera/ui/CameraGallery;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    sget-object v1, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->-set0(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;Lcom/oneplus/camera/ui/CameraGallery;)Lcom/oneplus/camera/ui/CameraGallery;

    .line 93
    iget-object v0, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-static {v0}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->-get0(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)Lcom/oneplus/camera/ui/CameraGallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$3;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->-get1(Lcom/oneplus/camera/ui/BasePreviewCoverProducer;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 88
    return-void
.end method
