.class Lcom/oneplus/camera/ui/CaptureBar$26;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$VideoCaptureState:[I

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$26;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/CaptureBar$26;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSED:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PAUSING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->PREPARING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->REVIEWING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STARTING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->STOPPING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/oneplus/camera/ui/CaptureBar$26;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1812
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/VideoCaptureState;

    .line 1813
    .local v0, "videoCaptureState":Lcom/oneplus/camera/VideoCaptureState;
    invoke-static {}, Lcom/oneplus/camera/ui/CaptureBar$26;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1824
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get1(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick() - Invalid video capture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1816
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->pauseVideoCapture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get1(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onClick() - Failed to pause video recording"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1820
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->resumeVideoCapture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$26;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get1(Lcom/oneplus/camera/ui/CaptureBar;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onClick() - Failed to resume video recording"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
