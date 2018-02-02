.class Lcom/oneplus/camera/ui/TouchFocusExposureUI$8$1;
.super Ljava/lang/Object;
.source "TouchFocusExposureUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;->onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V
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
.field final synthetic this$1:Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8$1;->this$1:Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;

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
            "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/CameraGallery$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/CameraGallery$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/CameraGallery$UIState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8$1;->this$1:Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$8;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TouchFocusExposureUI;->-wrap2(Lcom/oneplus/camera/ui/TouchFocusExposureUI;)V

    .line 336
    :cond_0
    return-void
.end method
