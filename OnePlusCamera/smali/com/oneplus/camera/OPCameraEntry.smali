.class public final Lcom/oneplus/camera/OPCameraEntry;
.super Lcom/oneplus/camera/BaseCameraActivity;
.source "OPCameraEntry.java"


# static fields
.field private static final synthetic -com-oneplus-camera-StartModeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-oneplus-camera-StartModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/OPCameraEntry;->-com-oneplus-camera-StartModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/OPCameraEntry;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/StartMode;->values()[Lcom/oneplus/camera/StartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/StartMode;->BUSINESS_CARD:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_BOKEH:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_MANUAL:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO_SELFIE:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/StartMode;->SECURE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_PHOTO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/oneplus/camera/StartMode;->SERVICE_VIDEO:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v1}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    sput-object v0, Lcom/oneplus/camera/OPCameraEntry;->-com-oneplus-camera-StartModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1

    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oneplus/camera/OPCameraEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/OPCameraEntry;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oneplus/camera/BaseCameraActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/oneplus/camera/BaseCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 23
    .local v2, "originalIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 24
    .local v1, "newIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 25
    invoke-static {}, Lcom/oneplus/camera/OPCameraEntry;->-getcom-oneplus-camera-StartModeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraEntry;->checkStartMode(Landroid/content/Intent;)Lcom/oneplus/camera/StartMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 33
    const-class v3, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    :goto_0
    :try_start_0
    sget-object v3, Lcom/oneplus/camera/OPCameraEntry;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate() - Launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraEntry;->finishAndRemoveTask()V

    .line 16
    return-void

    .line 30
    :pswitch_0
    const-class v3, Lcom/oneplus/camera/OPSecureCameraActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/camera/OPCameraEntry;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreate() - Fail to start activity"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
