.class Lcom/oneplus/camera/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->bindToNormalComponents()Z
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
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/io/Storage;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-VideoCaptureStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$VideoCaptureState:[I

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method private static synthetic -getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/CameraActivity$8;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/CameraActivity$8;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->READY:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/VideoCaptureState;->RESUMING:Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v1}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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
    sput-object v0, Lcom/oneplus/camera/CameraActivity$8;->-com-oneplus-camera-VideoCaptureStateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 8
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/io/Storage;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/io/Storage;>;>;"
    const/4 v7, 0x0

    .line 1106
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "StorageType"

    const-class v5, Lcom/oneplus/io/Storage$Type;

    sget-object v6, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/base/Settings;->getEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/Storage$Type;

    .line 1107
    .local v2, "type":Lcom/oneplus/io/Storage$Type;
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v3}, Lcom/oneplus/camera/CameraActivity;->-get7(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/io/StorageManager;

    move-result-object v3

    sget-object v4, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-static {v3, v4}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 1108
    .local v1, "sdcardStorage":Lcom/oneplus/io/Storage;
    if-nez v1, :cond_1

    sget-object v3, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    if-ne v2, v3, :cond_1

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "isShowed":Z
    invoke-static {}, Lcom/oneplus/camera/CameraActivity$8;->-getcom-oneplus-camera-VideoCaptureStateSwitchesValues()[I

    move-result-object v4

    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/VideoCaptureState;

    invoke-virtual {v3}, Lcom/oneplus/camera/VideoCaptureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1125
    :goto_0
    if-nez v0, :cond_0

    .line 1126
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v4, v4, Lcom/oneplus/camera/CameraActivity;->m_StorageToast:I

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 1127
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v3}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraThread;->checkRemainingMediaCount()V

    .line 1128
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Settings;

    const-string/jumbo v4, "StorageType"

    sget-object v5, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    .end local v0    # "isShowed":Z
    :cond_1
    return-void

    .line 1118
    .restart local v0    # "isShowed":Z
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v4}, Lcom/oneplus/camera/CameraActivity;->-get8(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;

    move-result-object v4

    invoke-static {v3, v4, v7, v7}, Lcom/oneplus/camera/CameraActivity;->-wrap23(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)V

    .line 1119
    iget-object v3, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v4, p0, Lcom/oneplus/camera/CameraActivity$8;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget v4, v4, Lcom/oneplus/camera/CameraActivity;->m_StorageStopRecordToast:I

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->showToast(I)V

    .line 1120
    const/4 v0, 0x1

    .line 1121
    goto :goto_0

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
