.class Lcom/oneplus/camera/ExposureControllerImpl$2;
.super Ljava/lang/Object;
.source "ExposureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ExposureControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ExposureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ExposureControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ExposureControllerImpl;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/camera/ExposureControllerImpl$2;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

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
    .line 38
    iget-object v0, p0, Lcom/oneplus/camera/ExposureControllerImpl$2;->this$0:Lcom/oneplus/camera/ExposureControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ExposureControllerImpl;->-wrap3(Lcom/oneplus/camera/ExposureControllerImpl;)V

    .line 36
    return-void
.end method
