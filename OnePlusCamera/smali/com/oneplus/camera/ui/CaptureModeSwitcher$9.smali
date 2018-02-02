.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onInitialize()V
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
        "Lcom/oneplus/camera/OperationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$OperationState:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OperationState;->values()[Lcom/oneplus/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

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
            "Lcom/oneplus/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 989
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/OperationState;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PROP_CAMERA_PREVIEW_STATE changed oldValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " m_IsSwitchingCaptureMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get15(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 987
    :goto_0
    return-void

    .line 993
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get15(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    goto :goto_0

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PROP_CAMERA_PREVIEW_STATE animationState: m_ContainerAnimationState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get4(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/capturemode/CaptureModeManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/capturemode/CaptureModeManager;->PROP_CAPTURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 998
    .local v0, "captureMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->END:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get8(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;->IDLE:Lcom/oneplus/camera/ui/CaptureModeSwitcher$AnimationState;

    if-ne v1, v2, :cond_2

    .line 999
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get3(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;I)I

    .line 1001
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$9;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;)V

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
