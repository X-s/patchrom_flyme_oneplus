.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$PhotoCaptureState:[I

.field final synthetic $SWITCH_TABLE$com$oneplus$camera$VideoCaptureState:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method private static synthetic -getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->PREPARING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STARTING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->STOPPING:Lcom/oneplus/camera/PhotoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-com-oneplus-camera-PhotoCaptureStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/VideoCaptureState;->values()[Lcom/oneplus/camera/VideoCaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->CAPTURING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    .line 892
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/PhotoCaptureState;

    .line 893
    .local v0, "photoCaptureState":Lcom/oneplus/camera/PhotoCaptureState;
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/VideoCaptureState;

    .line 895
    .local v1, "videoCaptureState":Lcom/oneplus/camera/VideoCaptureState;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-getcom-oneplus-camera-PhotoCaptureStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/camera/PhotoCaptureState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 901
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick() - photoCaptureState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", do nothing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void

    .line 905
    :pswitch_0
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 911
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClick() - videoCaptureState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", do nothing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void

    .line 915
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get12(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2, v5, v6, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    .line 890
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap2(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get0(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onClick() - capture UI is disabled, do nothing."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void

    .line 927
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get9(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 929
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-get7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iget-object v3, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    const-string/jumbo v4, "CaptureModeFastChange"

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set1(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 932
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set6(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 933
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2, v5}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-set7(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Z)Z

    .line 934
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v2, v8, v6, v7}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap16(Lcom/oneplus/camera/ui/CaptureModeSwitcher;ZJ)V

    goto :goto_0

    .line 938
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$7;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    const/4 v3, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap11(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/capturemode/CaptureMode;JZ)V

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 905
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
