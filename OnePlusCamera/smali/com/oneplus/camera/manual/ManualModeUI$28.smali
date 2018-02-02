.class Lcom/oneplus/camera/manual/ManualModeUI$28;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->onInitialize()V
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

.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;


# direct methods
.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$28;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/manual/ManualModeUI$28;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->REVIEWING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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
    sput-object v0, Lcom/oneplus/camera/manual/ManualModeUI$28;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$28;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 5
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
    .line 1465
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/PhotoCaptureState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/PhotoCaptureState;>;"
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$28;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap0(Lcom/oneplus/camera/manual/ManualModeUI;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$28;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1473
    :goto_0
    invoke-static {}, Lcom/oneplus/camera/manual/ManualModeUI$28;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v2}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 1463
    :cond_0
    :goto_1
    return-void

    .line 1470
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$28;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap13(Lcom/oneplus/camera/manual/ManualModeUI;)V

    goto :goto_0

    .line 1476
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$28;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap5(Lcom/oneplus/camera/manual/ManualModeUI;)J

    move-result-wide v0

    .line 1477
    .local v0, "exposureTime":J
    const-wide/32 v2, 0x1dcd6500

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1478
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$28;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    invoke-static {v2}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap27(Lcom/oneplus/camera/manual/ManualModeUI;)V

    goto :goto_1

    .line 1482
    .end local v0    # "exposureTime":J
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$28;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    sget-object v3, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->FADE_IN:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    sget-object v4, Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;->NONE:Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;

    invoke-static {v2, v3, v4}, Lcom/oneplus/camera/manual/ManualModeUI;->-wrap26(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;Lcom/oneplus/camera/manual/ManualModeUI$AnimationType;)V

    goto :goto_1

    .line 1467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1473
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
