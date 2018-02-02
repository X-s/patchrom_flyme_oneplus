.class public final Lcom/oneplus/camera/bokeh/BokehUI;
.super Lcom/oneplus/camera/ModeUI;
.source "BokehUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/camera/ModeUI",
        "<",
        "Lcom/oneplus/camera/bokeh/BokehController;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-BokehStateSwitchesValues:[I = null

.field private static final DELAY_SHOW_BOKEH_STATE_TOAST:J = 0x7d0L

.field static final MSG_BOKEH_STATE_CHANGED:I = 0x2711

.field private static final MSG_CHECK_BOKEH_STATE:I = 0x2724

.field static final MSG_DEBUG_INFO_UPDATED:I = 0x271a

.field public static final PROP_HAS_BOKEH_EFFECT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_BokehState:Lcom/oneplus/camera/BokehState;

.field private m_DebugInfoTextView:Landroid/widget/TextView;

.field private m_EnterTime:J

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_Handles:Lcom/oneplus/base/HandleSet;

.field private m_HintHandle:Lcom/oneplus/base/Handle;

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

.field private m_ResolutionSelector:Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;

.field private m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

.field private m_StateHintHandle:Lcom/oneplus/base/Handle;

.field private m_ZoomController:Lcom/oneplus/camera/ZoomController;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/bokeh/BokehUI;)Lcom/oneplus/camera/BokehState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_BokehState:Lcom/oneplus/camera/BokehState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/bokeh/BokehUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-BokehStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/bokeh/BokehUI;->-com-oneplus-camera-BokehStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/bokeh/BokehUI;->-com-oneplus-camera-BokehStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/BokehState;->values()[Lcom/oneplus/camera/BokehState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/BokehState;->CAMERA_COVERED:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_CLOSE:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/BokehState;->DISTANCE_TOO_FAR:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/BokehState;->ERROR:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/BokehState;->INITIALIZING:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/camera/BokehState;->LOW_LIGHT:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/camera/BokehState;->NO_DEPTH_EFFECT:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/camera/BokehState;->NO_SUBJECT:Lcom/oneplus/camera/BokehState;

    invoke-virtual {v1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/oneplus/camera/bokeh/BokehUI;->-com-oneplus-camera-BokehStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/bokeh/BokehUI;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_EnterTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/bokeh/BokehUI;Lcom/oneplus/camera/ui/OnScreenHint;)Lcom/oneplus/camera/ui/OnScreenHint;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/bokeh/BokehUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->isEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/bokeh/BokehUI;)Lcom/oneplus/camera/ModeController;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/bokeh/BokehUI;Lcom/oneplus/camera/BokehState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/camera/BokehState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/bokeh/BokehUI;->onBokehStateChanged(Lcom/oneplus/camera/BokehState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "HasBokehEffect"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/camera/bokeh/BokehUI;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/bokeh/BokehUI;->PROP_HAS_BOKEH_EFFECT:Lcom/oneplus/base/PropertyKey;

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 93
    const-string/jumbo v0, "Portrait UI"

    const-class v1, Lcom/oneplus/camera/bokeh/BokehController;

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/ModeUI;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Class;)V

    .line 59
    sget-object v0, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_BokehState:Lcom/oneplus/camera/BokehState;

    .line 91
    return-void
.end method

.method private onBokehStateChanged(Lcom/oneplus/camera/BokehState;)V
    .locals 12
    .param p1, "state"    # Lcom/oneplus/camera/BokehState;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->isEntered()Z

    move-result v7

    if-nez v7, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_BokehState:Lcom/oneplus/camera/BokehState;

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "hasEffect":Z
    const/4 v3, 0x1

    .line 139
    .local v3, "hintFlags":I
    const/4 v5, 0x5

    .line 140
    .local v5, "stateFlags":I
    invoke-static {}, Lcom/oneplus/camera/bokeh/BokehUI;->-getcom-oneplus-camera-BokehStateSwitchesValues()[I

    move-result-object v7

    invoke-virtual {p1}, Lcom/oneplus/camera/BokehState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 173
    const v4, 0x7f0d0039

    .line 174
    .local v4, "hintResId":I
    const v6, 0x7f0d0032

    .line 175
    .local v6, "stateResId":I
    const/16 v5, 0x45

    .line 180
    :goto_0
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v7, :cond_1

    .line 182
    const-class v7, Lcom/oneplus/camera/ui/OnScreenHint;

    new-instance v8, Lcom/oneplus/camera/bokeh/BokehUI$1;

    invoke-direct {v8, p0}, Lcom/oneplus/camera/bokeh/BokehUI$1;-><init>(Lcom/oneplus/camera/bokeh/BokehUI;)V

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/bokeh/BokehUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 191
    return-void

    .line 143
    .end local v4    # "hintResId":I
    .end local v6    # "stateResId":I
    :pswitch_0
    const v4, 0x7f0d0033

    .line 144
    .restart local v4    # "hintResId":I
    const v6, 0x7f0d0032

    .line 145
    .restart local v6    # "stateResId":I
    const/16 v5, 0x45

    .line 146
    goto :goto_0

    .line 148
    .end local v4    # "hintResId":I
    .end local v6    # "stateResId":I
    :pswitch_1
    const v4, 0x7f0d0037

    .line 149
    .restart local v4    # "hintResId":I
    const v6, 0x7f0d0032

    .line 150
    .restart local v6    # "stateResId":I
    const/16 v5, 0x45

    .line 151
    goto :goto_0

    .line 153
    .end local v4    # "hintResId":I
    .end local v6    # "stateResId":I
    :pswitch_2
    const v4, 0x7f0d0038

    .line 154
    .restart local v4    # "hintResId":I
    const v6, 0x7f0d0032

    .line 155
    .restart local v6    # "stateResId":I
    const/16 v5, 0x45

    .line 156
    goto :goto_0

    .line 158
    .end local v4    # "hintResId":I
    .end local v6    # "stateResId":I
    :pswitch_3
    const/4 v4, 0x0

    .line 159
    .restart local v4    # "hintResId":I
    const/4 v6, 0x0

    .line 160
    .restart local v6    # "stateResId":I
    goto :goto_0

    .line 162
    .end local v4    # "hintResId":I
    .end local v6    # "stateResId":I
    :pswitch_4
    const v4, 0x7f0d0034

    .line 163
    .restart local v4    # "hintResId":I
    const v6, 0x7f0d0032

    .line 164
    .restart local v6    # "stateResId":I
    const/16 v5, 0x45

    .line 165
    goto :goto_0

    .line 167
    .end local v4    # "hintResId":I
    .end local v6    # "stateResId":I
    :pswitch_5
    const/4 v1, 0x1

    .line 168
    const/4 v4, 0x0

    .line 169
    .restart local v4    # "hintResId":I
    const v6, 0x7f0d0032

    .line 170
    .restart local v6    # "stateResId":I
    const/16 v5, 0x25

    .line 171
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 196
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    if-eqz v6, :cond_3

    .line 198
    invoke-virtual {v0, v6}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "hint":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 200
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v8, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v7, v8, v2, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 208
    .end local v2    # "hint":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_EnterTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7d0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_5

    .line 210
    invoke-virtual {v0, v4}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "hint":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    iget-object v8, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-interface {v7, v8, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHint;->updateHint(Lcom/oneplus/base/Handle;Ljava/lang/CharSequence;I)Z

    .line 220
    .end local v2    # "hint":Ljava/lang/String;
    :goto_2
    sget-object v7, Lcom/oneplus/camera/bokeh/BokehUI;->PROP_HAS_BOKEH_EFFECT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/camera/bokeh/BokehUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 125
    return-void

    .line 202
    .restart local v2    # "hint":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-interface {v7, v2, v5}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 205
    .end local v2    # "hint":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 214
    .restart local v2    # "hint":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-interface {v7, v2, v3}, Lcom/oneplus/camera/ui/OnScreenHint;->showSecondaryHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    goto :goto_2

    .line 217
    .end local v2    # "hint":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v7}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    goto :goto_2

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateDebugInfo([Lcom/oneplus/camera/BokehDebugInfo;)V
    .locals 7
    .param p1, "debugInfos"    # [Lcom/oneplus/camera/BokehDebugInfo;

    .prologue
    const/4 v6, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->isEntered()Z

    move-result v4

    if-nez v4, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f0a00a9

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 415
    .local v2, "root":Landroid/view/View;
    const v4, 0x7f0a003f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    .line 419
    .end local v2    # "root":Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v3, "textBuilder":Ljava/lang/StringBuilder;
    array-length v4, p1

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 424
    aget-object v0, p1, v1

    .line 425
    .local v0, "debugInfo":Lcom/oneplus/camera/BokehDebugInfo;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string/jumbo v4, "  cameraRole = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->cameraRole:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string/jumbo v4, "  startX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->startX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string/jumbo v4, "  startY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->startY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string/jumbo v4, "  width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string/jumbo v4, "  height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v4, "  exposureTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->exposureTime:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v4, "  realGain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->realGain:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string/jumbo v4, "  aecStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->aecStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string/jumbo v4, "  lensShiftUm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->lensShiftUm:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v4, "  afStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/oneplus/camera/BokehDebugInfo;->afStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string/jumbo v4, "}\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 438
    .end local v0    # "debugInfo":Lcom/oneplus/camera/BokehDebugInfo;
    :cond_2
    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .end local v1    # "i":I
    .end local v3    # "textBuilder":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 441
    :cond_3
    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 118
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->handleMessage(Landroid/os/Message;)V

    .line 99
    :goto_0
    return-void

    .line 105
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/camera/BokehState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/bokeh/BokehUI;->onBokehStateChanged(Lcom/oneplus/camera/BokehState;)V

    goto :goto_0

    .line 110
    :sswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_BokehState:Lcom/oneplus/camera/BokehState;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/bokeh/BokehUI;->onBokehStateChanged(Lcom/oneplus/camera/BokehState;)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/oneplus/camera/BokehDebugInfo;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/bokeh/BokehUI;->updateDebugInfo([Lcom/oneplus/camera/BokehDebugInfo;)V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x271a -> :sswitch_2
        0x2724 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onEnter(I)Z
    .locals 8
    .param p1, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 230
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    const/16 v3, 0x24

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->switchCamera(Lcom/oneplus/camera/Camera$LensFacing;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Fail to switch to BACK camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return v6

    .line 235
    :cond_0
    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->BACK:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->lockCamera(Lcom/oneplus/camera/Camera$LensFacing;)Lcom/oneplus/base/Handle;

    move-result-object v1

    .line 236
    .local v1, "cameraLockHandle":Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Fail to lock camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return v6

    .line 241
    :cond_1
    new-instance v2, Lcom/oneplus/base/HandleSet;

    new-array v3, v7, [Lcom/oneplus/base/Handle;

    aput-object v1, v3, v6

    invoke-direct {v2, v3}, Lcom/oneplus/base/HandleSet;-><init>([Lcom/oneplus/base/Handle;)V

    iput-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 244
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onEnter(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/HandleSet;

    iput-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 247
    return v6

    .line 251
    :cond_2
    sget-object v2, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->setMediaType(Lcom/oneplus/camera/media/MediaType;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onEnter() - Fail to change to photo mode"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/HandleSet;

    iput-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 255
    return v6

    .line 259
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_EnterTime:J

    .line 260
    const/16 v2, 0x2724

    const-wide/16 v4, 0x7d0

    invoke-static {p0, v2, v7, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 263
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    if-eqz v2, :cond_4

    .line 264
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v3, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    invoke-interface {v3, v6}, Lcom/oneplus/camera/ZoomController;->lockZoom(I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 267
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    if-eqz v2, :cond_5

    .line 268
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v3, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    sget-object v4, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-interface {v3, v4, v6}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 271
    :cond_5
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->disableBurstPhotoCapture()Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 274
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    if-eqz v2, :cond_6

    .line 275
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v3, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    sget-object v4, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/scene/SceneManager;->setDefaultScene(Lcom/oneplus/camera/scene/Scene;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 278
    :cond_6
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    if-eqz v2, :cond_8

    .line 280
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ResolutionSelector:Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;

    if-nez v2, :cond_7

    .line 281
    new-instance v2, Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;

    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ResolutionSelector:Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;

    .line 282
    :cond_7
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    iget-object v3, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    iget-object v4, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ResolutionSelector:Lcom/oneplus/camera/bokeh/BokehUI$ResolutionSelector;

    invoke-interface {v3, v4, v6}, Lcom/oneplus/camera/media/ResolutionManager;->setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/base/HandleSet;->addHandle(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/HandleSet;

    .line 286
    :cond_8
    sget-object v2, Lcom/oneplus/camera/BokehState;->NORMAL:Lcom/oneplus/camera/BokehState;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/bokeh/BokehUI;->onBokehStateChanged(Lcom/oneplus/camera/BokehState;)V

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 291
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 292
    iget-object v2, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getController()Lcom/oneplus/camera/ModeController;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 297
    :cond_a
    return v7
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/HandleSet;

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_Handles:Lcom/oneplus/base/HandleSet;

    .line 307
    sget-object v0, Lcom/oneplus/camera/BokehState;->DISABLED:Lcom/oneplus/camera/BokehState;

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_BokehState:Lcom/oneplus/camera/BokehState;

    .line 308
    sget-object v0, Lcom/oneplus/camera/bokeh/BokehUI;->PROP_HAS_BOKEH_EFFECT:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/bokeh/BokehUI;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_StateHintHandle:Lcom/oneplus/base/Handle;

    .line 312
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_HintHandle:Lcom/oneplus/base/Handle;

    .line 315
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_DebugInfoTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_0
    const/16 v0, 0x2724

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 325
    invoke-super {p0, p1}, Lcom/oneplus/camera/ModeUI;->onExit(I)V

    .line 303
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 334
    invoke-super {p0}, Lcom/oneplus/camera/ModeUI;->onInitialize()V

    .line 337
    invoke-virtual {p0}, Lcom/oneplus/camera/bokeh/BokehUI;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 338
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    const-class v1, Lcom/oneplus/camera/FlashController;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/FlashController;

    iput-object v1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_FlashController:Lcom/oneplus/camera/FlashController;

    .line 339
    const-class v1, Lcom/oneplus/camera/media/ResolutionManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/media/ResolutionManager;

    iput-object v1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ResolutionManager:Lcom/oneplus/camera/media/ResolutionManager;

    .line 340
    const-class v1, Lcom/oneplus/camera/scene/SceneManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/scene/SceneManager;

    iput-object v1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_SceneManager:Lcom/oneplus/camera/scene/SceneManager;

    .line 341
    const-class v1, Lcom/oneplus/camera/ZoomController;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ZoomController;

    iput-object v1, p0, Lcom/oneplus/camera/bokeh/BokehUI;->m_ZoomController:Lcom/oneplus/camera/ZoomController;

    .line 344
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_DEBUG_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/bokeh/BokehUI$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/bokeh/BokehUI$2;-><init>(Lcom/oneplus/camera/bokeh/BokehUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 364
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/bokeh/BokehUI$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/bokeh/BokehUI$3;-><init>(Lcom/oneplus/camera/bokeh/BokehUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 376
    const-class v1, Lcom/oneplus/camera/ui/CameraGallery;

    new-instance v2, Lcom/oneplus/camera/bokeh/BokehUI$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/bokeh/BokehUI$4;-><init>(Lcom/oneplus/camera/bokeh/BokehUI;)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/bokeh/BokehUI;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 331
    return-void
.end method
