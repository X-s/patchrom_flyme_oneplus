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
    .line 62
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
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
    .line 67
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    sget-object v2, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->PROP_GRID_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraPreviewGridImpl$1;->this$0:Lcom/oneplus/camera/ui/CameraPreviewGridImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->-wrap1(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v3, "Grid.Type"

    const-class v4, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    sget-object v5, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-static {v1, v2, v0}, Lcom/oneplus/camera/ui/CameraPreviewGridImpl;->-wrap0(Lcom/oneplus/camera/ui/CameraPreviewGridImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method
