.class Lcom/oneplus/camera/FlashControllerImpl$1;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FlashControllerImpl;
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
        "Lcom/oneplus/camera/SupportedState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$1;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

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
            "Lcom/oneplus/camera/SupportedState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/SupportedState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/SupportedState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/SupportedState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$1;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    # getter for: Lcom/oneplus/camera/FlashControllerImpl;->m_TorchFlashHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->access$000(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v1, Lcom/oneplus/camera/FlashControllerImpl$10;->$SwitchMap$com$oneplus$camera$SupportedState:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v0}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$1;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    # getter for: Lcom/oneplus/camera/FlashControllerImpl;->m_CameraSystemService:Lcom/oneplus/camera/CameraService;
    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->access$300(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/camera/CameraService;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/camera/CameraService;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 59
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$1;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/camera/FlashControllerImpl;->torchFlashRemote(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->access$100(Lcom/oneplus/camera/FlashControllerImpl;Z)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$1;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    # invokes: Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z
    invoke-static {v0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->access$200(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashMode;)Z

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
