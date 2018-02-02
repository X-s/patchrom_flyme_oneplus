.class Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;
.super Ljava/lang/Object;
.source "BasePreviewCoverProducer.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/BasePreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
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
    .line 36
    iput-object p1, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/CameraGallery$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/CameraGallery$UIState;>;"
    iget-object v2, p0, Lcom/oneplus/camera/ui/BasePreviewCoverProducer$1;->this$0:Lcom/oneplus/camera/ui/BasePreviewCoverProducer;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/camera/ui/BasePreviewCoverProducer;->onCameraGalleryUIStateChanged(Lcom/oneplus/camera/ui/CameraGallery$UIState;Lcom/oneplus/camera/ui/CameraGallery$UIState;)V

    .line 39
    return-void
.end method
