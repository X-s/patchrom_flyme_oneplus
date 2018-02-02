.class Lcom/oneplus/camera/OPCameraActivity$5$1;
.super Ljava/lang/Object;
.source "OPCameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/OPCameraActivity$5;->onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V
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
        "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/OPCameraActivity$5;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPCameraActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/OPCameraActivity$5;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/oneplus/camera/OPCameraActivity$5$1;->this$1:Lcom/oneplus/camera/OPCameraActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$GalleryState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/CameraGallery$GalleryState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/CameraGallery$GalleryState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity$5$1;->this$1:Lcom/oneplus/camera/OPCameraActivity$5;

    iget-object v1, v0, Lcom/oneplus/camera/OPCameraActivity$5;->this$0:Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v1, v0}, Lcom/oneplus/camera/OPCameraActivity;->-wrap0(Lcom/oneplus/camera/OPCameraActivity;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)V

    .line 474
    return-void
.end method
