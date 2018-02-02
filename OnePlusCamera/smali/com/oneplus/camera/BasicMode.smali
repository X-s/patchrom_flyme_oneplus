.class public abstract Lcom/oneplus/camera/BasicMode;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BasicMode.java"

# interfaces
.implements Lcom/oneplus/camera/Mode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/oneplus/camera/Mode",
        "<*>;>",
        "Lcom/oneplus/base/HandlerBaseObject;",
        "Lcom/oneplus/camera/Mode",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Mode$StateSwitchesValues:[I


# instance fields
.field private final m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_State:Lcom/oneplus/camera/Mode$State;


# direct methods
.method private static synthetic -getcom-oneplus-camera-Mode$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/BasicMode;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/BasicMode;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Mode$State;->values()[Lcom/oneplus/camera/Mode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/BasicMode;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/camera/BasicMode;Lcom/oneplus/base/PropertyChangedCallback;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-object p1
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 19
    sget-object v0, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    iput-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No camera activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    sget-object v0, Lcom/oneplus/camera/BasicMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/camera/BasicMode;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 38
    iput-object p1, p0, Lcom/oneplus/camera/BasicMode;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    .line 41
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/oneplus/camera/BasicMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/BasicMode$1;-><init>(Lcom/oneplus/camera/BasicMode;)V

    iput-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 53
    sget-object v0, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 27
    :cond_1
    return-void
.end method

.method private changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;
    .locals 2
    .param p1, "state"    # Lcom/oneplus/camera/Mode$State;

    .prologue
    .line 61
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    .line 62
    .local v0, "oldState":Lcom/oneplus/camera/Mode$State;
    if-eq v0, p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    .line 65
    sget-object v1, Lcom/oneplus/camera/BasicMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/camera/BasicMode;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    return-object v1
.end method


# virtual methods
.method protected final disable()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/BasicMode;->verifyAccess()V

    .line 77
    invoke-static {}, Lcom/oneplus/camera/BasicMode;->-getcom-oneplus-camera-Mode$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disable() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    sget-object v0, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    .line 74
    return-void

    .line 81
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exit()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/BasicMode;->exit(Lcom/oneplus/camera/Mode;I)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final enable()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/BasicMode;->verifyAccess()V

    .line 103
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-eq v0, v1, :cond_0

    .line 104
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    .line 100
    return-void
.end method

.method public final enter(Lcom/oneplus/camera/Mode;I)Z
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    .local p1, "prevMode":Lcom/oneplus/camera/Mode;, "TT;"
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/camera/BasicMode;->verifyAccess()V

    .line 116
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v2, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    if-eq v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enter() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v4

    .line 123
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    if-eq v1, v2, :cond_1

    .line 125
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Entering process was interrupted"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v4

    .line 132
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/BasicMode;->onEnter(Lcom/oneplus/camera/Mode;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Fail to enter"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    if-ne v1, v2, :cond_2

    .line 136
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    return v4

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Fail to enter"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    if-ne v1, v2, :cond_3

    .line 144
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    .line 145
    :cond_3
    return v4

    .line 149
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    if-eq v1, v2, :cond_6

    .line 151
    :cond_5
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "enter() - Entering process was interrupted"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return v4

    .line 156
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public final exit(Lcom/oneplus/camera/Mode;I)V
    .locals 3
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    .local p1, "nextMode":Lcom/oneplus/camera/Mode;, "TT;"
    invoke-virtual {p0}, Lcom/oneplus/camera/BasicMode;->verifyAccess()V

    .line 166
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v2, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    if-eq v1, v2, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    if-eq v1, v2, :cond_1

    .line 172
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "exit() - Exiting process was interrupted"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void

    .line 179
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/BasicMode;->onExit(Lcom/oneplus/camera/Mode;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v2, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    if-ne v1, v2, :cond_2

    .line 188
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    .line 162
    :cond_2
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/BasicMode;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "exit() - Unhandled exception occurred while exiting"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/BasicMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    return-object v0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getCamera()Lcom/oneplus/camera/Camera;
    .locals 2

    .prologue
    .line 209
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/oneplus/camera/CameraActivity;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    return-object v0
.end method

.method protected final getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public final isEntered()Z
    .locals 2

    .prologue
    .line 239
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_State:Lcom/oneplus/camera/Mode$State;

    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCameraThreadStarted()V
    .locals 0

    .prologue
    .line 246
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    return-void
.end method

.method protected abstract onEnter(Lcom/oneplus/camera/Mode;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method

.method protected abstract onExit(Lcom/oneplus/camera/Mode;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    const/4 v3, 0x0

    .line 278
    sget-object v0, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/BasicMode;->changeState(Lcom/oneplus/camera/Mode$State;)Lcom/oneplus/camera/Mode$State;

    .line 281
    iget-object v0, p0, Lcom/oneplus/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/oneplus/camera/BasicMode;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 284
    iput-object v3, p0, Lcom/oneplus/camera/BasicMode;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 275
    return-void
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/BasicMode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Cannot change mode state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/HandlerBaseObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/oneplus/camera/BasicMode;, "Lcom/oneplus/camera/BasicMode<TT;>;"
    sget-object v0, Lcom/oneplus/camera/BasicMode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/BasicMode;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
