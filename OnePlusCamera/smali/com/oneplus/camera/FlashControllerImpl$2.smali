.class Lcom/oneplus/camera/FlashControllerImpl$2;
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


# static fields
.field private static final synthetic -com-oneplus-camera-SupportedStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$SupportedState:[I

.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;


# direct methods
.method private static synthetic -getcom-oneplus-camera-SupportedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl$2;->-com-oneplus-camera-SupportedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/FlashControllerImpl$2;->-com-oneplus-camera-SupportedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/SupportedState;->values()[Lcom/oneplus/camera/SupportedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/SupportedState;->NOT_SUPPORTED:Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/SupportedState;->SUPPORTED:Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/SupportedState;->UNKNOWN:Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v1}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/camera/FlashControllerImpl$2;->-com-oneplus-camera-SupportedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FlashControllerImpl;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$2;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

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
    .line 103
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/SupportedState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/SupportedState;>;"
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$2;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-get5(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/oneplus/camera/FlashControllerImpl$2;->-getcom-oneplus-camera-SupportedStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/SupportedState;

    invoke-virtual {v0}, Lcom/oneplus/camera/SupportedState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$2;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FlashControllerImpl;->-get2(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/camera/CameraService;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraService;->PROP_TORCH_FLASH_SUPPORTED_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/camera/CameraService;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 101
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$2;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap5(Lcom/oneplus/camera/FlashControllerImpl;Z)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$2;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    sget-object v1, Lcom/oneplus/camera/FlashMode;->TORCH:Lcom/oneplus/camera/FlashMode;

    invoke-static {v0, v1}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap0(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashMode;)Z

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
