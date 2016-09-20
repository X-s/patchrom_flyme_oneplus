.class public Lcom/oneplus/camera/OPCameraActivity;
.super Lcom/oneplus/camera/CameraActivity;
.source "OPCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/OPCameraActivity$3;
    }
.end annotation


# static fields
.field public static final EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_CODE_ADV_SETTINGS:I = 0x3e8


# instance fields
.field private m_CaptureUIContainer:Landroid/view/ViewGroup;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsCaptureUIInflated"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/OPCameraActivity;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    .line 52
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "PrepareAdvancedSettingActivityExtraBundle"

    const-class v2, Lcom/oneplus/camera/IntentEventArgs;

    const-class v3, Lcom/oneplus/camera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oneplus/camera/CameraActivity;-><init>()V

    .line 65
    sget-object v0, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_MAIN_ACTIVITY:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/OPCameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/OPCameraActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->onLaunchCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/OPCameraActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/OPCameraActivity;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/OPCameraActivity;->onElapsedRecordingTimeChanged(J)V

    return-void
.end method

.method private onBackFromAdvancedSettings(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onBackFromAdvancedSettings()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v1

    .line 109
    .local v1, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Lcom/oneplus/camera/media/ResolutionManager;->getPhotoResolutionSettingsKey()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "resolutionSettingsKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 114
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Settings;

    invoke-virtual {v3, v2}, Lcom/oneplus/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/camera/media/Resolution;->fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v0

    .line 115
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v0, :cond_1

    .line 117
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onBackFromAdvancedSettings() - Selected photo resolution : "

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    sget-object v3, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v3, v0}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 124
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .restart local v2    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v4, "onBackFromAdvancedSettings() - No selected photo resolution"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onElapsedRecordingTimeChanged(J)V
    .locals 7
    .param p1, "seconds"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 317
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 319
    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 320
    .local v0, "maxSeconds":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    .line 323
    .end local v0    # "maxSeconds":J
    :cond_0
    return-void
.end method

.method private onLaunchCompleted()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onLaunchCompleted() - Inflate capture UI [start]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    .line 363
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v1, "onLaunchCompleted() - Inflate capture UI [end]"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_CAPTURE_UI_INFLATED:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method private prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "agentType"    # I

    .prologue
    .line 396
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 397
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v2, "com.oneplus.camera.agent.intent.extra.AGENT_TYPE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 401
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 402
    const-string v2, "com.oneplus.camera.agent.intent.extra.COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    :cond_0
    sget-object v3, Lcom/oneplus/camera/OPCameraActivity$3;->$SwitchMap$com$oneplus$base$Rotation:[I

    sget-object v2, Lcom/oneplus/camera/OPCameraActivity;->PROP_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Rotation;

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 414
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/AgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 419
    :goto_0
    return-object v1

    .line 408
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/LandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 411
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/oneplus/camera/InverseLandscapeAgentActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMaxVideoDurationMessage()V
    .locals 9

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/media/ResolutionManager;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v5, v6}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/media/Resolution;

    .line 482
    .local v3, "resolution":Lcom/oneplus/camera/media/Resolution;
    sget-object v5, Lcom/oneplus/camera/OPCameraActivity;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 483
    .local v0, "maxSeconds":J
    if-eqz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 486
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    const v5, 0x7f090024

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "resolutionStr":Ljava/lang/String;
    :goto_0
    const v5, 0x7f09002f

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    invoke-static {p0, v0, v1}, Lcom/oneplus/camera/util/StringUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oneplus/camera/OPCameraActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 497
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is1080pVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 489
    const v5, 0x7f090023

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0

    .line 490
    .end local v4    # "resolutionStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/oneplus/camera/media/Resolution;->is720pVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    const v5, 0x7f090025

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/OPCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "resolutionStr":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final getCaptureUIContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_CaptureUIContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getSceneManager()Lcom/oneplus/camera/scene/SceneManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    return-void

    .line 95
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/camera/OPCameraActivity;->onBackFromAdvancedSettings(ILandroid/content/Intent;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V
    .locals 3
    .param p1, "e"    # Lcom/oneplus/camera/CameraOpenFailedEventArgs;

    .prologue
    .line 130
    sget-object v1, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/oneplus/camera/CameraOpenFailedEventArgs;->getErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 154
    :pswitch_0
    const v0, 0x7f090037

    .line 157
    .local v0, "messageID":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    .end local v0    # "messageID":I
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCameraOpenFailedError(Lcom/oneplus/camera/CameraOpenFailedEventArgs;)V

    .line 161
    return-void

    .line 136
    :pswitch_1
    const v0, 0x7f090032

    .line 137
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 139
    .end local v0    # "messageID":I
    :pswitch_2
    const v0, 0x7f090033

    .line 140
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 142
    .end local v0    # "messageID":I
    :pswitch_3
    const v0, 0x7f090035

    .line 143
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 145
    .end local v0    # "messageID":I
    :pswitch_4
    const v0, 0x7f090036

    .line 146
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 148
    .end local v0    # "messageID":I
    :pswitch_5
    const v0, 0x7f090038

    .line 149
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 151
    .end local v0    # "messageID":I
    :pswitch_6
    const v0, 0x7f090034

    .line 152
    .restart local v0    # "messageID":I
    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p2, "reason"    # Lcom/oneplus/camera/CaptureCompleteReason;

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraActivity;->onCaptureCompleted(Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/camera/CaptureCompleteReason;)V

    .line 173
    sget-object v0, Lcom/oneplus/camera/OPCameraActivity$3;->$SwitchMap$com$oneplus$camera$CaptureCompleteReason:[I

    invoke-virtual {p2}, Lcom/oneplus/camera/CaptureCompleteReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 177
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/camera/OPCameraActivity;->showMaxVideoDurationMessage()V

    goto :goto_0

    .line 185
    :pswitch_2
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-virtual {p1}, Lcom/oneplus/camera/CaptureHandle;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    .line 190
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->showToast(I)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 201
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-static {p0}, Lcom/oneplus/camera/CameraApplication;->notifyInstanceCreated(Lcom/oneplus/camera/CameraActivity;)V

    .line 207
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_IS_LAUNCHING:Lcom/oneplus/base/PropertyKey;

    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$1;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$1;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 218
    const-class v10, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 219
    .local v1, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    if-eqz v1, :cond_0

    .line 221
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v10, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    array-length v2, v10

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 222
    sget-object v10, Lcom/oneplus/camera/CaptureModeBuilders;->BUILDERS:[Lcom/oneplus/camera/capturemode/CaptureModeBuilder;

    aget-object v10, v10, v3

    invoke-interface {v1, v10, v12}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->addBuilder(Lcom/oneplus/camera/capturemode/CaptureModeBuilder;I)Z

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v11, "onCreate() - No CaptureModeManager"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    if-eqz v1, :cond_3

    .line 230
    const/4 v4, 0x0

    .line 231
    .local v4, "initialCaptureMode":Z
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/StartMode;->NORMAL_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v10, v11, :cond_4

    .line 233
    const-class v10, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {v1, v10}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v5

    .line 234
    .local v5, "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v5, :cond_2

    .line 236
    invoke-interface {v1, v5, v12}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 237
    const/4 v4, 0x1

    .line 249
    .end local v5    # "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 250
    invoke-interface {v1, v12}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->changeToInitialCaptureMode(I)Z

    .line 254
    .end local v4    # "initialCaptureMode":Z
    :cond_3
    new-instance v6, Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    invoke-direct {v6}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;-><init>()V

    .line 255
    .local v6, "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    .line 256
    .local v0, "cameraThread":Lcom/oneplus/camera/CameraThread;
    sget-object v10, Lcom/oneplus/camera/ComponentBuilders;->BUILDERS_CAMERA_THREAD:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraThread;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 257
    const v10, 0x7f050002

    iput v10, v6, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->burstShutterSound:I

    .line 258
    const v10, 0x7f050003

    iput v10, v6, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->photoShutterSound:I

    .line 259
    const v10, 0x7f050001

    iput v10, v6, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStartSound:I

    .line 260
    const/high16 v10, 0x7f050000

    iput v10, v6, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->videoStopSound:I

    .line 261
    invoke-virtual {v0, v6}, Lcom/oneplus/camera/CameraThread;->setResourceIdTable(Lcom/oneplus/camera/CameraThread$ResourceIdTable;)V

    .line 262
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v10}, Lcom/oneplus/camera/CameraThread;->start(Lcom/oneplus/camera/media/MediaType;)V

    .line 265
    const-class v10, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 266
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v10, :cond_5

    .line 268
    const/4 v3, 0x0

    .restart local v3    # "i":I
    sget-object v10, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    array-length v2, v10

    .restart local v2    # "count":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 269
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v11, Lcom/oneplus/camera/SceneBuilders;->BUILDERS:[Lcom/oneplus/camera/scene/SceneBuilder;

    aget-object v11, v11, v3

    invoke-interface {v10, v11, v12}, Lcom/oneplus/camera/scene/SceneManager;->addBuilder(Lcom/oneplus/camera/scene/SceneBuilder;I)Z

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    .end local v0    # "cameraThread":Lcom/oneplus/camera/CameraThread;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    .restart local v4    # "initialCaptureMode":Z
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/StartMode;->NORMAL_VIDEO:Lcom/oneplus/camera/StartMode;

    if-ne v10, v11, :cond_2

    .line 241
    const-class v10, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    invoke-interface {v1, v10}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v7

    .line 242
    .local v7, "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v7, :cond_2

    .line 244
    invoke-interface {v1, v7, v12}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 245
    const/4 v4, 0x1

    goto :goto_1

    .line 272
    .end local v4    # "initialCaptureMode":Z
    .end local v7    # "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    .restart local v0    # "cameraThread":Lcom/oneplus/camera/CameraThread;
    .restart local v6    # "resIdTable":Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    :cond_5
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v11, "onCreate() - No SceneManager interface"

    invoke-static {v10, v11}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_6
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_ELAPSED_RECORDING_SECONDS:Lcom/oneplus/base/PropertyKey;

    new-instance v11, Lcom/oneplus/camera/OPCameraActivity$2;

    invoke-direct {v11, p0}, Lcom/oneplus/camera/OPCameraActivity$2;-><init>(Lcom/oneplus/camera/OPCameraActivity;)V

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/camera/OPCameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 288
    sget v10, Lcom/oneplus/camera/BuildFlags;->ROM_VERSION:I

    if-eq v10, v13, :cond_7

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->ignoreNavigationBar()V

    .line 292
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 293
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 294
    .local v9, "windowAttrs":Landroid/view/WindowManager$LayoutParams;
    iput v13, v9, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 295
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 298
    const v10, 0x7f030005

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->setContentView(I)V

    .line 299
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onDestroy()V

    .line 310
    invoke-static {p0}, Lcom/oneplus/camera/CameraApplication;->notifyInstanceDestroyed(Lcom/oneplus/camera/CameraActivity;)V

    .line 311
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 328
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v2

    .line 330
    .local v2, "startmode":Lcom/oneplus/camera/StartMode;
    const-class v4, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    invoke-virtual {p0, v4}, Lcom/oneplus/camera/OPCameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/capturemode/CaptureModeManager;

    .line 332
    .local v0, "captureModeManager":Lcom/oneplus/camera/capturemode/CaptureModeManager;
    if-eqz v0, :cond_0

    .line 334
    sget-object v4, Lcom/oneplus/camera/OPCameraActivity$3;->$SwitchMap$com$oneplus$camera$StartMode:[I

    invoke-virtual {v2}, Lcom/oneplus/camera/StartMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 337
    :pswitch_0
    const-class v4, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v1

    .line 338
    .local v1, "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v1, :cond_0

    .line 340
    invoke-interface {v0, v1, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    goto :goto_0

    .line 344
    .end local v1    # "photoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    :pswitch_1
    const-class v4, Lcom/oneplus/camera/capturemode/VideoCaptureMode;

    invoke-interface {v0, v4}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->findCaptureMode(Ljava/lang/Class;)Lcom/oneplus/camera/capturemode/CaptureMode;

    move-result-object v3

    .line 345
    .local v3, "videoMode":Lcom/oneplus/camera/capturemode/CaptureMode;
    if-eqz v3, :cond_0

    .line 347
    invoke-interface {v0, v3, v6}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onPause()V

    .line 389
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 374
    .local v0, "boundBottom":I
    new-instance v1, Landroid/graphics/RectF;

    sget-object v3, Lcom/oneplus/camera/OPCameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 375
    .local v1, "buounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getViewfinder()Lcom/oneplus/camera/ui/Viewfinder;

    move-result-object v2

    .line 376
    .local v2, "viewFinder":Lcom/oneplus/camera/ui/Viewfinder;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/oneplus/camera/ui/Viewfinder;->setPreferredPreviewBounds(Landroid/graphics/RectF;I)V

    .line 379
    invoke-super {p0}, Lcom/oneplus/camera/CameraActivity;->onResume()V

    .line 380
    return-void
.end method

.method public final showAdvancedSettings()Z
    .locals 12

    .prologue
    .line 433
    :try_start_0
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/camera/Settings;

    .line 434
    .local v9, "settings":Lcom/oneplus/camera/Settings;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v3, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->EVENT_PREPARE_ADVANCED_SETTING_ACTIVITY_EXTRA_BUNDLE:Lcom/oneplus/base/EventKey;

    new-instance v11, Lcom/oneplus/camera/IntentEventArgs;

    invoke-direct {v11, v3}, Lcom/oneplus/camera/IntentEventArgs;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/camera/OPCameraActivity;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 438
    const-string v10, "Settings.Name"

    invoke-virtual {v9}, Lcom/oneplus/camera/Settings;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v10, "Settings.IsVolatile"

    invoke-virtual {v9}, Lcom/oneplus/camera/Settings;->isVolatile()Z

    move-result v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    const-string v10, "StartMode"

    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getStartMode()Lcom/oneplus/camera/StartMode;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 443
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v10, v11, :cond_1

    .line 445
    sget-object v10, Lcom/oneplus/camera/OPCameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 446
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    invoke-virtual {p0}, Lcom/oneplus/camera/OPCameraActivity;->getResolutionManager()Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v7

    .line 447
    .local v7, "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    invoke-interface {v7}, Lcom/oneplus/camera/media/ResolutionManager;->getPhotoResolutionSettingsKey()Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "resolutionSettingsKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 450
    sget-object v10, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 451
    .local v6, "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    sget-object v10, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v10}, Lcom/oneplus/camera/media/ResolutionManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/media/Resolution;

    .line 452
    .local v5, "resolution":Lcom/oneplus/camera/media/Resolution;
    if-eqz v5, :cond_1

    .line 454
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    new-array v4, v10, [Ljava/lang/String;

    .line 455
    .local v4, "keys":[Ljava/lang/String;
    array-length v10, v4

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 456
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v10}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v2

    .line 455
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 457
    :cond_0
    const-string v10, "PhotoResolution.List"

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v10, "PhotoResolution"

    invoke-virtual {v5}, Lcom/oneplus/camera/media/Resolution;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v10, "Resolution.Photo.Key"

    invoke-virtual {v3, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    .end local v0    # "camera":Lcom/oneplus/camera/Camera;
    .end local v2    # "i":I
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "resolution":Lcom/oneplus/camera/media/Resolution;
    .end local v6    # "resolutionList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v7    # "resolutionManager":Lcom/oneplus/camera/media/ResolutionManager;
    .end local v8    # "resolutionSettingsKey":Ljava/lang/String;
    :cond_1
    const/16 v10, 0x3e8

    invoke-virtual {p0, v3, v10}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    const/4 v10, 0x1

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "settings":Lcom/oneplus/camera/Settings;
    :goto_1
    return v10

    .line 467
    :catch_0
    move-exception v1

    .line 469
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v10, p0, Lcom/oneplus/camera/OPCameraActivity;->TAG:Ljava/lang/String;

    const-string v11, "showAdvancedSettings() - Fail to start activity"

    invoke-static {v10, v11, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public startActivityByAgent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/OPCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method public startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/camera/OPCameraActivity;->prepareAgentActivityIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method
