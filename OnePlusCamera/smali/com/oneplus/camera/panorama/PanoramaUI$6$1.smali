.class Lcom/oneplus/camera/panorama/PanoramaUI$6$1;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/panorama/PanoramaUI$6;->onComponentFound(Lcom/oneplus/camera/ui/CameraGallery;)V
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


# static fields
.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$ui$CameraGallery$UIState:[I

.field final synthetic this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->values()[Lcom/oneplus/camera/ui/CameraGallery$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/panorama/PanoramaUI$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/panorama/PanoramaUI$6;

    .prologue
    .line 763
    iput-object p1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 769
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/ui/CameraGallery$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/CameraGallery$UIState;>;"
    invoke-static {}, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 772
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    iget-object v1, v1, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get10(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set4(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 775
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-wrap0(Lcom/oneplus/camera/panorama/PanoramaUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-static {v0}, Lcom/oneplus/camera/panorama/PanoramaUI;->-get10(Lcom/oneplus/camera/panorama/PanoramaUI;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    iget-object v0, v0, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    iget-object v1, p0, Lcom/oneplus/camera/panorama/PanoramaUI$6$1;->this$1:Lcom/oneplus/camera/panorama/PanoramaUI$6;

    iget-object v1, v1, Lcom/oneplus/camera/panorama/PanoramaUI$6;->this$0:Lcom/oneplus/camera/panorama/PanoramaUI;

    invoke-virtual {v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->lockRotation(Lcom/oneplus/base/Rotation;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/panorama/PanoramaUI;->-set4(Lcom/oneplus/camera/panorama/PanoramaUI;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
