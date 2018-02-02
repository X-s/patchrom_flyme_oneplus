.class Lcom/oneplus/camera/panorama/PanoramaUI$6;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaUI;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/panorama/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/panorama/PanoramaUI;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 761
    check-cast p1, Lcom/oneplus/camera/ui/CameraGallery;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/panorama/PanoramaUI$6;->onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/CameraGallery;

    .prologue
    .line 763
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;-><init>(Lcom/oneplus/camera/panorama/PanoramaUI$6;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CameraGallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 761
    return-void
.end method
