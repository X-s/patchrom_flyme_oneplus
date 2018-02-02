.class public final Lcom/oneplus/camera/bokeh/BokehController;
.super Lcom/oneplus/camera/ModeController;
.source "BokehController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/bokeh/BokehController$1;,
        Lcom/oneplus/camera/bokeh/BokehController$2;,
        Lcom/oneplus/camera/bokeh/BokehController$3;,
        Lcom/oneplus/camera/bokeh/BokehController$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeController",
        "<",
        "Lcom/oneplus/camera/bokeh/BokehUI;",
        ">;"
    }
.end annotation


# static fields
.field static final MSG_DISABLE_DEBUG_INFO:I = 0x2712

.field static final MSG_ENABLE_DEBUG_INFO:I = 0x2711

.field public static final SETTINGS_KEY_BOKEH_ORIGINAL:Ljava/lang/String; = "BokehOriginalPicture"


# instance fields
.field private m_ActiveCamera:Lcom/oneplus/camera/Camera;

.field private final m_BokehStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/BokehState;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/Camera$State;",
            ">;"
        }
    .end annotation
.end field

.field private final m_DebugInfoUpdatedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsDebugInfoEnabled:Z

.field private m_IsDebugInfoUpdateScheduled:Z

.field private final m_UpdateDebugInfoRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/bokeh/BokehController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/bokeh/BokehController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_UpdateDebugInfoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/bokeh/BokehController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/bokeh/BokehController;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->isUILinked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/base/component/Component;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/bokeh/BokehController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/bokeh/BokehController;->updateDebugInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "BokehOriginalPicture"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Settings;->setGlobalDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 1
    .param p1, "cameraThread"    # Lcom/oneplus/camera/CameraThread;

    .prologue
    .line 114
    const-string/jumbo v0, "Portrait controller"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ModeController;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;)V

    .line 43
    new-instance v0, Lcom/oneplus/camera/bokeh/BokehController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/bokeh/BokehController$1;-><init>(Lcom/oneplus/camera/bokeh/BokehController;)V

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_UpdateDebugInfoRunnable:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/oneplus/camera/bokeh/BokehController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/bokeh/BokehController$2;-><init>(Lcom/oneplus/camera/bokeh/BokehController;)V

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_BokehStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 71
    new-instance v0, Lcom/oneplus/camera/bokeh/BokehController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/bokeh/BokehController$3;-><init>(Lcom/oneplus/camera/bokeh/BokehController;)V

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_CameraStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 97
    new-instance v0, Lcom/oneplus/camera/bokeh/BokehController$4;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/bokeh/BokehController$4;-><init>(Lcom/oneplus/camera/bokeh/BokehController;)V

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_DebugInfoUpdatedHandler:Lcom/oneplus/base/EventHandler;

    .line 112
    return-void
.end method

.method private clearCameraParameters()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearCameraParameters()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_BokehStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_CameraStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_DebugInfoUpdatedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 133
    iput-object v4, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    .line 119
    :cond_1
    return-void
.end method

.method private setupCameraParameters(Lcom/oneplus/camera/Camera;)V
    .locals 4
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    if-nez p1, :cond_0

    .line 237
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    if-ne v0, p1, :cond_1

    .line 239
    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    if-eq v0, v1, :cond_2

    .line 241
    return-void

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/bokeh/BokehController;->clearCameraParameters()V

    .line 243
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setupCameraParameters()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    .line 245
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "BokehOriginalPicture"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 253
    :goto_0
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_CameraStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 254
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_BokehStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 255
    sget-object v0, Lcom/oneplus/camera/Camera;->EVENT_BOKEH_DEBUG_INFO_UPDATED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_DebugInfoUpdatedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 256
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_BOKEH_STRENGTH:Lcom/oneplus/base/PropertyKey;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 234
    return-void

    .line 251
    :cond_3
    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateDebugInfo()V
    .locals 3

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoEnabled:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->isUILinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    invoke-interface {v1}, Lcom/oneplus/camera/Camera;->getBokehDebugInfo()[Lcom/oneplus/camera/BokehDebugInfo;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 263
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->handleMessage(Landroid/os/Message;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoEnabled:Z

    if-eqz v0, :cond_0

    .line 147
    iput-boolean v3, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoEnabled:Z

    .line 148
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 151
    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 153
    iput-boolean v3, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    .line 154
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_UpdateDebugInfoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoEnabled:Z

    if-nez v0, :cond_0

    .line 162
    iput-boolean v4, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoEnabled:Z

    .line 163
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_DEBUG_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 166
    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    if-nez v0, :cond_0

    .line 168
    iput-boolean v4, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    .line 169
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_UpdateDebugInfoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 1
    .param p1, "oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/ModeController;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->isEntered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p2}, Lcom/oneplus/camera/bokeh/BokehController;->setupCameraParameters(Lcom/oneplus/camera/Camera;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onEnter(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onEnter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/bokeh/BokehController;->setupCameraParameters(Lcom/oneplus/camera/Camera;)V

    .line 206
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->isUILinked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehController;->getUI()Lcom/oneplus/base/component/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_ActiveCamera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_BOKEH_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v0, v2, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    .line 210
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/oneplus/camera/bokeh/BokehController;->clearCameraParameters()V

    .line 222
    iget-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_IsDebugInfoUpdateScheduled:Z

    .line 225
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController;->m_UpdateDebugInfoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 229
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeController;->onExit(I)V

    .line 216
    return-void
.end method
