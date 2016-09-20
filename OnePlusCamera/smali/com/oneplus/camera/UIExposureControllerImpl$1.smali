.class Lcom/oneplus/camera/UIExposureControllerImpl$1;
.super Ljava/lang/Object;
.source "UIExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIExposureControllerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$1;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$1;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    # invokes: Lcom/oneplus/camera/UIExposureControllerImpl;->unlockAutoExposure()V
    invoke-static {v0}, Lcom/oneplus/camera/UIExposureControllerImpl;->access$100(Lcom/oneplus/camera/UIExposureControllerImpl;)V

    .line 110
    return-void
.end method
