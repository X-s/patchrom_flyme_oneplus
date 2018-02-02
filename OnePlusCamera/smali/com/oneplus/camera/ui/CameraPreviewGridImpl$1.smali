.class Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;
.super Ljava/lang/Object;
.source "CameraPreviewGridImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->onInitialize()V
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->-wrap1(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)Lcom/oneplus/base/Settings;

    move-result-object v2

    const-string/jumbo v3, "Grid.IsVisible"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->-wrap0(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method
