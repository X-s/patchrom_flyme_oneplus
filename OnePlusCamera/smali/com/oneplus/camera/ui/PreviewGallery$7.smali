.class Lcom/oneplus/camera/ui/PreviewGallery$7;
.super Ljava/lang/Object;
.source "PreviewGallery.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/PreviewGallery;->onInitialize()V
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
        "Lcom/oneplus/camera/ui/CaptureButtons;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/PreviewGallery;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$7;->this$0:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 519
    check-cast p1, Lcom/oneplus/camera/ui/CaptureButtons;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$7;->onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 524
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/ui/PreviewGallery$7$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/PreviewGallery$7$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$7;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 535
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/ui/PreviewGallery$7$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/PreviewGallery$7$2;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$7;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 543
    return-void
.end method
