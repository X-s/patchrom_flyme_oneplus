.class public final Lcom/oneplus/camera/bokeh/BokehCaptureMode;
.super Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;
.source "BokehCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode",
        "<",
        "Lcom/oneplus/camera/bokeh/BokehUI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I = null

.field private static final ID:Ljava/lang/String; = "Bokeh"


# instance fields
.field private m_ShortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method private static synthetic -getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->values()[Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->CAPTURE_MODES_PANEL_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->SWITCH_MODE_LARGE_ICON:Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    invoke-virtual {v1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->-com-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)Lcom/oneplus/camera/Camera;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->disable()V

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 50
    const-string/jumbo v2, "Bokeh"

    const-string/jumbo v3, "bokeh"

    const-class v4, Lcom/oneplus/camera/bokeh/BokehUI;

    sget-object v5, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/capturemode/ComponentBasedCaptureMode;-><init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/oneplus/camera/media/MediaType;)V

    .line 53
    sget-object v0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_AVAILABLE_CAMERAS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/bokeh/BokehCaptureMode$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode$1;-><init>(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 75
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode$2;-><init>(Lcom/oneplus/camera/bokeh/BokehCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "usage"    # Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;

    .prologue
    .line 108
    invoke-static {}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->-getcom-oneplus-camera-capturemode-CaptureMode$ImageUsageSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/camera/capturemode/CaptureMode$ImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 8

    .prologue
    const v7, 0x7f0d00e5

    const v6, 0x7f0d00e4

    .line 125
    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->m_ShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->m_ShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v4

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 130
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.oneplus.camera.action.LAUNCH_IN_BOKEH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "intent":Landroid/content/Intent;
    const-class v4, Lcom/oneplus/camera/OPCameraActivity;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 135
    .local v2, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "android.shortcut.conversation"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 139
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string/jumbo v4, "LongLabelResId"

    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string/jumbo v4, "ShortLabelResId"

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    const-string/jumbo v5, "Bokeh"

    invoke-direct {v4, v1, v5}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 145
    invoke-virtual {v1, v7}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 146
    const v5, 0x7f020264

    invoke-static {v1, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->m_ShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 153
    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehCaptureMode;->m_ShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v4
.end method
