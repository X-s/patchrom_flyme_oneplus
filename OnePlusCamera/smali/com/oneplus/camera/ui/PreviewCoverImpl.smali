.class public Lcom/oneplus/camera/ui/PreviewCoverImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "PreviewCoverImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/PreviewCoverImpl$4;
    }
.end annotation


# instance fields
.field private m_PreviewCoverHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewCoverProducerStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewCoverProducers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCover$Style;",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Style:Lcom/oneplus/camera/ui/PreviewCover$Style;


# direct methods
.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 1
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 39
    const-string v0, "Base Preview Cover"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl$1;-><init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducerStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 46
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewCoverImpl;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->onPreviewCoverProducerStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewCoverImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/PreviewCoverImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewCoverImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/PreviewCoverImpl;Lcom/oneplus/base/Handle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewCoverImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->onPreviewCoverHandleClose(Lcom/oneplus/base/Handle;I)V

    return-void
.end method

.method private getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;
    .locals 4
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverProducer;

    .line 56
    .local v1, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 59
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverImpl$4;->$SwitchMap$com$oneplus$camera$ui$PreviewCover$Style:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/PreviewCover$Style;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 77
    :goto_1
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducerStateChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 78
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :pswitch_0
    new-instance v1, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    const/high16 v2, -0x1000000

    invoke-direct {v1, v0, v2}, Lcom/oneplus/camera/ui/ColorPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;I)V

    .line 63
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_1

    .line 65
    :pswitch_1
    new-instance v1, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1}, Lcom/oneplus/camera/ui/EmptyPreviewCoverProducer;-><init>()V

    .line 66
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_1

    .line 68
    :pswitch_2
    new-instance v1, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1, v0}, Lcom/oneplus/camera/ui/BlurPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 69
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_1

    .line 71
    :pswitch_3
    new-instance v1, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1, v0}, Lcom/oneplus/camera/ui/FlipBlurPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .line 72
    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_1

    .line 74
    :pswitch_4
    new-instance v1, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;

    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-direct {v1, v0}, Lcom/oneplus/camera/ui/NormalPreviewCoverProducer;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    .restart local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private mappingToExternalUIState(Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .locals 4
    .param p1, "state"    # Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_Style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v0

    .line 88
    .local v0, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 89
    .local v1, "uiState":Lcom/oneplus/camera/ui/PreviewCover$UIState;
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverImpl$4;->$SwitchMap$com$oneplus$camera$ui$PreviewCoverProducer$State:[I

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 92
    :pswitch_0
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 93
    invoke-interface {v0}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->isAlphaBlending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->PREPARE_TO_OPEN:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 102
    goto :goto_0

    .line 104
    :pswitch_3
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSING:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .line 105
    goto :goto_0

    .line 107
    :pswitch_4
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->CLOSED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onPreviewCoverHandleClose(Lcom/oneplus/base/Handle;I)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "flags"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_Style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->hidePreviewCover(I)V

    .line 162
    :cond_0
    return-void
.end method

.method private onPreviewCoverProducerStateChanged(Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/ui/PreviewCoverProducer$State;>;"
    invoke-virtual {p1}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-direct {p0, v1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->mappingToExternalUIState(Lcom/oneplus/camera/ui/PreviewCoverProducer$State;)Lcom/oneplus/camera/ui/PreviewCover$UIState;

    move-result-object v0

    .line 169
    .local v0, "uiState":Lcom/oneplus/camera/ui/PreviewCover$UIState;
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 170
    return-void
.end method


# virtual methods
.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 119
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/PreviewCoverProducer;

    .line 120
    .local v1, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    invoke-interface {v1}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->release()V

    goto :goto_0

    .line 121
    .end local v1    # "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverProducers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 124
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 125
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/PreviewCoverImpl$2;-><init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 149
    return-void
.end method

.method public showPreviewCover(Lcom/oneplus/camera/ui/PreviewCover$Style;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "style"    # Lcom/oneplus/camera/ui/PreviewCover$Style;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v1

    .line 179
    .local v1, "producer":Lcom/oneplus/camera/ui/PreviewCoverProducer;
    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 183
    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    if-ne v2, v3, :cond_2

    .line 184
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_Style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 188
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_Style:Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-direct {p0, v2}, Lcom/oneplus/camera/ui/PreviewCoverImpl;->getPreviewCoverProducer(Lcom/oneplus/camera/ui/PreviewCover$Style;)Lcom/oneplus/camera/ui/PreviewCoverProducer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/oneplus/camera/ui/PreviewCoverProducer;->showPreviewCover(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverImpl$3;

    const-string v2, "Preview Cover Handle"

    invoke-direct {v0, p0, v2}, Lcom/oneplus/camera/ui/PreviewCoverImpl$3;-><init>(Lcom/oneplus/camera/ui/PreviewCoverImpl;Ljava/lang/String;)V

    .line 199
    .local v0, "handle":Lcom/oneplus/base/Handle;
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewCoverImpl;->m_PreviewCoverHandles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
