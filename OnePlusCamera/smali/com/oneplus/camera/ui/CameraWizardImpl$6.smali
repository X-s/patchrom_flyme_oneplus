.class Lcom/oneplus/camera/ui/CameraWizardImpl$6;
.super Ljava/lang/Object;
.source "CameraWizardImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraWizardImpl;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraWizardImpl;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$6;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
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
    .line 198
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/capturemode/CaptureMode;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$6;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap6(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    .line 196
    return-void
.end method
