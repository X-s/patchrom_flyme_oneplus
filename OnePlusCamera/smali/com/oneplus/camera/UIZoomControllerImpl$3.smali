.class Lcom/oneplus/camera/UIZoomControllerImpl$3;
.super Ljava/lang/Object;
.source "UIZoomControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIZoomControllerImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIZoomControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIZoomControllerImpl;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oneplus/camera/UIZoomControllerImpl$3;->this$0:Lcom/oneplus/camera/UIZoomControllerImpl;

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
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    iget-object v0, p0, Lcom/oneplus/camera/UIZoomControllerImpl$3;->this$0:Lcom/oneplus/camera/UIZoomControllerImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    # invokes: Lcom/oneplus/camera/UIZoomControllerImpl;->setDigitalZoomProp(F)Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/UIZoomControllerImpl;->access$000(Lcom/oneplus/camera/UIZoomControllerImpl;F)Z

    .line 115
    return-void
.end method
