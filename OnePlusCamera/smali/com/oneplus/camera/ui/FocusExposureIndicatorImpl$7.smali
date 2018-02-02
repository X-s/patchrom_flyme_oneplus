.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
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
        "Lcom/oneplus/camera/PhotoCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$PhotoCaptureState:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/PhotoCaptureState;->values()[Lcom/oneplus/camera/PhotoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->CAPTURING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

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
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/PhotoCaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/PhotoCaptureState;>;"
    const/4 v0, 0x0

    .line 1249
    .local v0, "lockExposure":Z
    invoke-static {}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1268
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap7(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V

    .line 1246
    return-void

    .line 1252
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap11(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    goto :goto_0

    .line 1255
    :pswitch_1
    const/4 v0, 0x1

    .line 1256
    goto :goto_0

    .line 1258
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap0(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SELF_TIMER_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap6(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    goto :goto_0

    .line 1262
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap6(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V

    .line 1263
    iget-object v1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$7;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap14(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V

    goto :goto_0

    .line 1249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
