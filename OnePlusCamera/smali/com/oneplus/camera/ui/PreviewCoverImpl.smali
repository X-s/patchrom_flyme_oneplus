.class public Lcom/oneplus/camera/ui/PreviewCoverImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "PreviewCoverImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-ui-PreviewCover$StyleSwitchesValues:[I

.field private static final synthetic -com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I


# instance fields
.field private m_PreviewCoverHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewCoverListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$Style;",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_PreviewCoverProducers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$Style;",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCover$StyleSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-com-oneplus-camera-ui-PreviewCover$StyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-com-oneplus-camera-ui-PreviewCover$StyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCover$Style;->values()[Lcom/oneplus/camera/ui/PreviewCover$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->EMPTY:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR_FLIP:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_NORMAL:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-com-oneplus-camera-ui-PreviewCover$StyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->values()[Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-com-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;I)V
    .locals 0
    .param p1, "handle"    # Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->onPreviewCoverHandleClose(Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)V
    .locals 0
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;
    .param p2, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCoverProducer$State;
    .param p3, "newValue"    # Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->onPreviewCoverProducerStateChanged(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)V

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 58
    const-string/jumbo v0, "Base Preview Cover"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;
    .locals 4
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    return-object v2

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverProducer;

    .line 89
    .local v1, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    if-nez v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 92
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-getcom-oneplus-camera-ui-PreviewCover$StyleSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_0
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;-><init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/camera/ui/PreviewCover$Style;)V

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 118
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_1
    return-object v1

    .line 95
    .restart local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :pswitch_0
    new-instance v1, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    const/high16 v2, -0x1000000

    invoke-direct {v1, v0, v2}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;I)V

    .line 96
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v1, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1}, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;-><init>()V

    .line 99
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1, v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 102
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_0

    .line 104
    :pswitch_3
    new-instance v1, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1, v0}, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 105
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_0

    .line 107
    :pswitch_4
    new-instance v1, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1, v0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 108
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private mappingToExternalUIState(Lcom/oneplus/camera/ui/PreviewCoverProducer;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .locals 3
    .param p1, "producer"    # Lcom/oneplus/camera/ui/PreviewCoverProducer;
    .param p2, "state"    # Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    return-object v1

    .line 138
    :cond_0
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 139
    .local v0, "uiState":Lcom/oneplus/camera/ui/PreviewCover$UIState;
    invoke-static {}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->-getcom-oneplus-camera-ui-PreviewCoverProducer$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_1
    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 143
    invoke-interface {p1}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->isAlphaBlending()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 148
    :pswitch_1
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 151
    :pswitch_2
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 154
    :pswitch_3
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 157
    :pswitch_4
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private onPreviewCoverHandleClose(Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;I)V
    .locals 5
    .param p1, "handle"    # Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    .param p2, "flags"    # I

    .prologue
    .line 212
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    const/4 v0, 0x1

    .line 215
    .local v0, "hidePreviewCover":Z
    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "remainingHandle$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;

    .line 217
    .local v1, "remainingHandle":Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    iget-object v3, v1, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;->style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iget-object v4, p1, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;->style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    if-ne v3, v4, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 223
    .end local v1    # "remainingHandle":Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    :cond_1
    if-eqz v0, :cond_2

    .line 224
    iget-object v3, p1, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;->style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->hidePreviewCover(I)V

    .line 209
    .end local v0    # "hidePreviewCover":Z
    .end local v2    # "remainingHandle$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private onPreviewCoverProducerStateChanged(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)V
    .locals 14
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;
    .param p2, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCoverProducer$State;
    .param p3, "newValue"    # Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .prologue
    .line 232
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPreviewCoverProducerStateChanged() - Style: "

    const-string/jumbo v4, ", old value: "

    const-string/jumbo v6, ", new value: "

    move-object v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v13

    .line 236
    .local v13, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->mappingToExternalUIState(Lcom/oneplus/camera/ui/PreviewCoverProducer;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v12

    .line 237
    .local v12, "oldUIState":Lcom/oneplus/camera/ui/PreviewCover$UIState;
    move-object/from16 v0, p3

    invoke-direct {p0, v13, v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->mappingToExternalUIState(Lcom/oneplus/camera/ui/PreviewCoverProducer;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v11

    .line 240
    .local v11, "newUIState":Lcom/oneplus/camera/ui/PreviewCover$UIState;
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 241
    .local v10, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    if-eqz v10, :cond_0

    .line 243
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 244
    .local v8, "listener":Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;
    invoke-interface {v8, v12, v11}, Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;->onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    goto :goto_0

    .line 246
    .end local v8    # "listener":Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    check-cast v10, Ljava/util/Set;

    .line 249
    .restart local v10    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    if-eqz v10, :cond_1

    .line 251
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 252
    .restart local v8    # "listener":Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;
    invoke-interface {v8, v12, v11}, Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;->onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    goto :goto_1

    .line 230
    .end local v8    # "listener":Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V
    .locals 2
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;
    .param p2, "listener"    # Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 72
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    .restart local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public getPreviewCoverState(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .locals 2
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v0

    .line 129
    .local v0, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->mappingToExternalUIState(Lcom/oneplus/camera/ui/PreviewCoverProducer;Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v1

    return-object v1
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "producer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer;

    .line 170
    .local v0, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-interface {v0}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->release()V

    goto :goto_0

    .line 171
    .end local v0    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 177
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 180
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 166
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 192
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;-><init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 186
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V
    .locals 2
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;
    .param p2, "listener"    # Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 264
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;>;"
    if-nez v0, :cond_0

    .line 265
    return-void

    .line 268
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_1
    return-void
.end method

.method public showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;
    .locals 5
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showPreviewCover() - Activity is not running."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-object v4

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v1

    .line 286
    .local v1, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    if-nez v1, :cond_1

    .line 287
    return-object v4

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->showPreviewCover(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;-><init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/camera/ui/PreviewCover$Style;)V

    .line 294
    .local v0, "handle":Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-object v0

    .line 297
    .end local v0    # "handle":Lcom/oneplus/camera/ui/PreviewCoverImpl$PreviewCoverHandle;
    :cond_2
    return-object v4
.end method
