.class final Lcom/oneplus/camera/BacklightBrightnessControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "BacklightBrightnessControllerImpl.java"


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I = null

.field private static final MIN_BRIGHTNESS_VALUE_FOR_CAMERA:I = 0xe6


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/BacklightBrightnessControllerImpl;Lcom/oneplus/base/BaseActivity$State;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 25
    const-string/jumbo v0, "Backlight Brightness controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 23
    return-void
.end method

.method private checkBacklight()V
    .locals 2

    .prologue
    const/16 v1, 0xe6

    .line 52
    invoke-direct {p0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->getCurrentBrightness()I

    move-result v0

    .line 53
    .local v0, "currentBrightness":I
    if-le v0, v1, :cond_1

    .line 54
    invoke-direct {p0, v0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->updateBacklightBrightness(I)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-lez v0, :cond_0

    .line 56
    invoke-direct {p0, v1}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->updateBacklightBrightness(I)V

    goto :goto_0
.end method

.method private getCurrentBrightness()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 61
    const/4 v0, -0x1

    .line 63
    .local v0, "brightnessValue":I
    const/4 v1, 0x0

    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v7, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 68
    iget-object v5, p0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentBrightness() - brightnessValue : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    goto :goto_0

    .line 76
    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 75
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getCurrentBrightness() - failed to getBrightnessValue"

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    return v0

    .line 76
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1

    :cond_2
    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4    # "line":Ljava/lang/String;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_5
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_6
    if-eqz v6, :cond_5

    :try_start_6
    throw v6

    .line 74
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 76
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v7

    if-nez v6, :cond_4

    move-object v6, v7

    goto :goto_6

    :cond_4
    if-eq v6, v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_5

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private onActivityStateChanged(Lcom/oneplus/base/BaseActivity$State;)V
    .locals 2
    .param p1, "state"    # Lcom/oneplus/base/BaseActivity$State;

    .prologue
    .line 84
    invoke-static {}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->checkBacklight()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBacklightBrightness(I)V
    .locals 6
    .param p1, "brightnessValue"    # I

    .prologue
    .line 94
    iget-object v3, p0, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBacklightBrightness() - Update brightness : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    int-to-float v3, p1

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v1, v3, v4

    .line 98
    .local v1, "normalizedValue":F
    invoke-virtual {p0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 99
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 101
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onInitialize()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 37
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/BacklightBrightnessControllerImpl$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl$1;-><init>(Lcom/oneplus/camera/BacklightBrightnessControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 47
    invoke-direct {p0}, Lcom/oneplus/camera/BacklightBrightnessControllerImpl;->checkBacklight()V

    .line 30
    return-void
.end method
