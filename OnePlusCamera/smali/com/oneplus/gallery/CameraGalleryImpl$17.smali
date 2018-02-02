.class Lcom/oneplus/gallery/CameraGalleryImpl$17;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/PictureProcessService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 3325
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 3328
    check-cast p1, Lcom/oneplus/camera/PictureProcessService;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$17;->onComponentFound(Lcom/oneplus/camera/PictureProcessService;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/PictureProcessService;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/PictureProcessService;

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set11(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/PictureProcessService;)Lcom/oneplus/camera/PictureProcessService;

    .line 3331
    sget-object v0, Lcom/oneplus/camera/PictureProcessService;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$17$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$17$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$17;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/PictureProcessService;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3344
    sget-object v0, Lcom/oneplus/camera/PictureProcessService;->EVENT_PICTURE_PROCESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$17$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$17$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$17;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/PictureProcessService;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3328
    return-void
.end method
