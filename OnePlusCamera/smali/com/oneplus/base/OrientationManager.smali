.class public final Lcom/oneplus/base/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/OrientationManager$1;,
        Lcom/oneplus/base/OrientationManager$2;,
        Lcom/oneplus/base/OrientationManager$3;,
        Lcom/oneplus/base/OrientationManager$4;,
        Lcom/oneplus/base/OrientationManager$Callback;,
        Lcom/oneplus/base/OrientationManager$CallbackHandle;,
        Lcom/oneplus/base/OrientationManager$CallbackHandler;
    }
.end annotation


# static fields
.field private static final MSG_ORIENTATION_CHANGED:I = 0x2710

.field private static final MSG_ROTATION_CHANGED:I = 0x2711

.field private static final MSG_SYSTEM_ORIENTATION_SETTINGS_CHANGED:I = 0x2712

.field private static final SUPPORT_SYSTEM_ORIENTATION_SETTINGS:Z = false

.field private static final TAG:Ljava/lang/String; = "OrientationManager"

.field private static m_AccRotationObserver:Landroid/database/ContentObserver;

.field private static final m_CallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/OrientationManager$CallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_Context:Landroid/content/Context;

.field private static m_IsAccRotationEnabled:Ljava/lang/Boolean;

.field private static m_IsSensorStarted:Z

.field private static m_MainHandler:Landroid/os/Handler;

.field private static m_OrientationListener:Landroid/view/OrientationEventListener;

.field private static final m_RegisterAccRotationRunnable:Ljava/lang/Runnable;

.field private static volatile m_Rotation:Lcom/oneplus/base/Rotation;

.field private static final m_SensorRequestHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_SensorThread:Landroid/os/HandlerThread;

.field private static m_SensorThreadHandler:Landroid/os/Handler;

.field private static final m_StartSensorRunnable:Ljava/lang/Runnable;

.field private static final m_StopSensorRunnable:Ljava/lang/Runnable;

.field private static final m_UnregisterAccRotationRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/oneplus/base/OrientationManager;->onAccRotationSettingsChangedInternal()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "enabled"    # Ljava/lang/Boolean;

    .prologue
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->onAccRotationSettingsChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap2(I)V
    .locals 0
    .param p0, "orientation"    # I

    .prologue
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic -wrap3()V
    .locals 0

    invoke-static {}, Lcom/oneplus/base/OrientationManager;->registerAccRotationInternal()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/base/OrientationManager$CallbackHandle;)V
    .locals 0
    .param p0, "handle"    # Lcom/oneplus/base/OrientationManager$CallbackHandle;

    .prologue
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->removeCallback(Lcom/oneplus/base/OrientationManager$CallbackHandle;)V

    return-void
.end method

.method static synthetic -wrap5()V
    .locals 0

    invoke-static {}, Lcom/oneplus/base/OrientationManager;->startOrientationSensorInternal()V

    return-void
.end method

.method static synthetic -wrap6()V
    .locals 0

    invoke-static {}, Lcom/oneplus/base/OrientationManager;->stopOrientationSensorInternal()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->stopOrientationSensor(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic -wrap8()V
    .locals 0

    invoke-static {}, Lcom/oneplus/base/OrientationManager;->unregisterAccRotationInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_IsAccRotationEnabled:Ljava/lang/Boolean;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/oneplus/base/OrientationManager$1;

    invoke-direct {v0}, Lcom/oneplus/base/OrientationManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_RegisterAccRotationRunnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/oneplus/base/OrientationManager$2;

    invoke-direct {v0}, Lcom/oneplus/base/OrientationManager$2;-><init>()V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_StartSensorRunnable:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/oneplus/base/OrientationManager$3;

    invoke-direct {v0}, Lcom/oneplus/base/OrientationManager$3;-><init>()V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_StopSensorRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/oneplus/base/OrientationManager$4;

    invoke-direct {v0}, Lcom/oneplus/base/OrientationManager$4;-><init>()V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_UnregisterAccRotationRunnable:Ljava/lang/Runnable;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotation()Lcom/oneplus/base/Rotation;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    return-object v0
.end method

.method public static isSystemOrientationEnabled()Z
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_IsAccRotationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static onAccRotationSettingsChanged(Ljava/lang/Boolean;)V
    .locals 6
    .param p0, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 186
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_IsAccRotationEnabled:Ljava/lang/Boolean;

    if-ne v2, p0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    const-string/jumbo v2, "OrientationManager"

    const-string/jumbo v3, "onAccRotationSettingsChanged() - Enabled: "

    invoke-static {v2, v3, p0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    sput-object p0, Lcom/oneplus/base/OrientationManager;->m_IsAccRotationEnabled:Ljava/lang/Boolean;

    .line 195
    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    monitor-enter v3

    .line 197
    :try_start_0
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 199
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    iget-object v0, v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;->handler:Lcom/oneplus/base/OrientationManager$CallbackHandler;

    .line 200
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 201
    const/16 v2, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 197
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    :cond_1
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    iget-object v2, v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/oneplus/base/OrientationManager$Callback;->onSystemOrientationSettingsChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 195
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "i":I
    :cond_2
    monitor-exit v3

    .line 183
    return-void
.end method

.method private static onAccRotationSettingsChangedInternal()V
    .locals 5

    .prologue
    .line 212
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 213
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 214
    .local v0, "enabled":Z
    :goto_0
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_MainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/base/OrientationManager$5;

    invoke-direct {v3, v0}, Lcom/oneplus/base/OrientationManager$5;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void

    .line 213
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private static onOrientationChanged(I)V
    .locals 7
    .param p0, "orientation"    # I

    .prologue
    .line 229
    sget-object v5, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    monitor-enter v5

    .line 231
    :try_start_0
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 233
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    iget-object v1, v4, Lcom/oneplus/base/OrientationManager$CallbackHandle;->handler:Lcom/oneplus/base/OrientationManager$CallbackHandler;

    .line 234
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 235
    const/16 v4, 0x2710

    const/4 v6, 0x0

    invoke-static {v1, v4, p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 231
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 237
    :cond_0
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    iget-object v4, v4, Lcom/oneplus/base/OrientationManager$CallbackHandle;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {v4, p0}, Lcom/oneplus/base/OrientationManager$Callback;->onOrientationChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "i":I
    :cond_1
    monitor-exit v5

    .line 242
    const/4 v4, -0x1

    if-ne p0, v4, :cond_2

    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    if-eqz v4, :cond_2

    .line 244
    const-string/jumbo v4, "OrientationManager"

    const-string/jumbo v5, "onOrientationChanged() - Ignore unknown orientation"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 249
    :cond_2
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    if-eqz v4, :cond_5

    .line 251
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-virtual {v4}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v4

    sub-int v0, p0, v4

    .line 252
    .local v0, "diff":I
    const/16 v4, 0xb4

    if-le v0, v4, :cond_4

    .line 253
    rsub-int v0, v0, 0x168

    .line 256
    :cond_3
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x46

    if-gt v4, v5, :cond_5

    .line 257
    return-void

    .line 254
    :cond_4
    const/16 v4, -0xb4

    if-ge v0, v4, :cond_3

    .line 255
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 261
    .end local v0    # "diff":I
    :cond_5
    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 262
    .local v3, "prevRotation":Lcom/oneplus/base/Rotation;
    invoke-static {p0}, Lcom/oneplus/base/Rotation;->fromDeviceOrientation(I)Lcom/oneplus/base/Rotation;

    move-result-object v4

    sput-object v4, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    .line 263
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    if-ne v3, v4, :cond_6

    .line 264
    return-void

    .line 267
    :cond_6
    sget-object v4, Lcom/oneplus/base/OrientationManager;->m_Rotation:Lcom/oneplus/base/Rotation;

    invoke-static {v3, v4}, Lcom/oneplus/base/OrientationManager;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 226
    return-void
.end method

.method private static onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 7
    .param p0, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 274
    const-string/jumbo v2, "OrientationManager"

    const-string/jumbo v3, "onRotationChanged() - "

    const-string/jumbo v4, " -> "

    invoke-static {v2, v3, p0, v4, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    monitor-enter v3

    .line 277
    :try_start_0
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 279
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    iget-object v0, v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;->handler:Lcom/oneplus/base/OrientationManager$CallbackHandler;

    .line 280
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 281
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/16 v4, 0x2711

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 277
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 283
    :cond_0
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    iget-object v2, v2, Lcom/oneplus/base/OrientationManager$CallbackHandle;->callback:Lcom/oneplus/base/OrientationManager$Callback;

    invoke-virtual {v2, p0, p1}, Lcom/oneplus/base/OrientationManager$Callback;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 275
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "i":I
    :cond_1
    monitor-exit v3

    .line 272
    return-void
.end method

.method private static registerAccRotationInternal()V
    .locals 4

    .prologue
    .line 292
    const-string/jumbo v0, "OrientationManager"

    const-string/jumbo v1, "registerAutoRotationInternal()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_AccRotationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->onAccRotationSettingsChangedInternal()V

    .line 290
    return-void
.end method

.method private static removeCallback(Lcom/oneplus/base/OrientationManager$CallbackHandle;)V
    .locals 2
    .param p0, "handle"    # Lcom/oneplus/base/OrientationManager$CallbackHandle;

    .prologue
    .line 301
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 299
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setCallback(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p0, "callback"    # Lcom/oneplus/base/OrientationManager$Callback;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 316
    if-nez p0, :cond_0

    .line 318
    const-string/jumbo v1, "OrientationManager"

    const-string/jumbo v2, "setCallback() - No call-back"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-object v3

    .line 321
    :cond_0
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    monitor-enter v2

    .line 323
    :try_start_0
    new-instance v0, Lcom/oneplus/base/OrientationManager$CallbackHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/base/OrientationManager$CallbackHandle;-><init>(Lcom/oneplus/base/OrientationManager$Callback;Landroid/os/Handler;)V

    .line 324
    .local v0, "handle":Lcom/oneplus/base/OrientationManager$CallbackHandle;
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_CallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 325
    return-object v0

    .line 321
    .end local v0    # "handle":Lcom/oneplus/base/OrientationManager$CallbackHandle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 337
    if-nez p0, :cond_0

    .line 339
    const-string/jumbo v1, "OrientationManager"

    const-string/jumbo v2, "startOrientationSensor() - No context"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object v3

    .line 342
    :cond_0
    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    monitor-enter v2

    .line 344
    :try_start_0
    new-instance v0, Lcom/oneplus/base/OrientationManager$6;

    const-string/jumbo v1, "RequestOrientationSensor"

    invoke-direct {v0, v1}, Lcom/oneplus/base/OrientationManager$6;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "handle":Lcom/oneplus/base/Handle;
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 355
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_MainHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 356
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oneplus/base/OrientationManager;->m_MainHandler:Landroid/os/Handler;

    .line 357
    :cond_1
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 359
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "Orientation sensor thread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorThread:Landroid/os/HandlerThread;

    .line 360
    const-string/jumbo v1, "OrientationManager"

    const-string/jumbo v3, "startOrientationSensor() - Start sensor thread"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 362
    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_SensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorThreadHandler:Landroid/os/Handler;

    .line 363
    const-string/jumbo v1, "OrientationManager"

    const-string/jumbo v3, "startOrientationSensor() - Sensor thread started"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v1, Lcom/oneplus/base/OrientationManager$7;

    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_SensorThreadHandler:Landroid/os/Handler;

    invoke-direct {v1, v3}, Lcom/oneplus/base/OrientationManager$7;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/oneplus/base/OrientationManager;->m_AccRotationObserver:Landroid/database/ContentObserver;

    .line 373
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/oneplus/base/OrientationManager;->m_Context:Landroid/content/Context;

    .line 374
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorThreadHandler:Landroid/os/Handler;

    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_StopSensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorThreadHandler:Landroid/os/Handler;

    sget-object v3, Lcom/oneplus/base/OrientationManager;->m_StartSensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v2

    .line 379
    return-object v0

    .line 342
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static startOrientationSensorInternal()V
    .locals 2

    .prologue
    .line 387
    sget-boolean v0, Lcom/oneplus/base/OrientationManager;->m_IsSensorStarted:Z

    if-nez v0, :cond_1

    .line 389
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/oneplus/base/OrientationManager$8;

    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/base/OrientationManager$8;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/base/OrientationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    .line 400
    :cond_0
    const-string/jumbo v0, "OrientationManager"

    const-string/jumbo v1, "startOrientationSensorInternal()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/base/OrientationManager;->m_IsSensorStarted:Z

    .line 385
    :cond_1
    return-void
.end method

.method private static stopOrientationSensor(Lcom/oneplus/base/Handle;)V
    .locals 3
    .param p0, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 410
    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    monitor-enter v1

    .line 412
    :try_start_0
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_SensorRequestHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_SensorThreadHandler:Landroid/os/Handler;

    sget-object v2, Lcom/oneplus/base/OrientationManager;->m_StopSensorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 408
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static stopOrientationSensorInternal()V
    .locals 2

    .prologue
    .line 422
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oneplus/base/OrientationManager;->m_IsSensorStarted:Z

    if-eqz v0, :cond_0

    .line 424
    const-string/jumbo v0, "OrientationManager"

    const-string/jumbo v1, "stopOrientationSensorInternal()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/base/OrientationManager;->m_IsSensorStarted:Z

    .line 426
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 420
    :cond_0
    return-void
.end method

.method private static unregisterAccRotationInternal()V
    .locals 2

    .prologue
    .line 434
    const-string/jumbo v0, "OrientationManager"

    const-string/jumbo v1, "unregisterAccRotationInternal()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/oneplus/base/OrientationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/OrientationManager;->m_AccRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 432
    return-void
.end method
