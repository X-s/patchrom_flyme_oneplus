.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1105
    check-cast p1, Lcom/oneplus/camera/ui/CaptureButtons;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;->onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/CaptureButtons;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/CaptureButtons;

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/CaptureButtons;)Lcom/oneplus/camera/ui/CaptureButtons;

    .line 1108
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_PRESSED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$1;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1116
    sget-object v0, Lcom/oneplus/camera/ui/CaptureButtons;->EVENT_BUTTON_RELEASED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$17$2;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$17;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/CaptureButtons;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1105
    return-void
.end method
