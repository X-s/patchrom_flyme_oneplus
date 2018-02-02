.class public abstract Lcom/oneplus/base/component/BasicComponent;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "BasicComponent.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field private static final synthetic -com-oneplus-base-component-ComponentStateSwitchesValues:[I


# instance fields
.field private final m_Name:Ljava/lang/String;

.field private final m_Owner:Lcom/oneplus/base/component/ComponentOwner;

.field private volatile m_State:Lcom/oneplus/base/component/ComponentState;


# direct methods
.method private static synthetic -getcom-oneplus-base-component-ComponentStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/base/component/BasicComponent;->-com-oneplus-base-component-ComponentStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/component/BasicComponent;->-com-oneplus-base-component-ComponentStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/component/ComponentState;->values()[Lcom/oneplus/base/component/ComponentState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/component/ComponentState;->NEW:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RELEASED:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/base/component/BasicComponent;->-com-oneplus-base-component-ComponentStateSwitchesValues:[I

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

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .param p3, "hasHandler"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p3}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 15
    sget-object v0, Lcom/oneplus/base/component/ComponentState;->NEW:Lcom/oneplus/base/component/ComponentState;

    iput-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No component name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    if-nez p2, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No component owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/oneplus/base/component/BasicComponent;->m_Name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/oneplus/base/component/BasicComponent;->m_Owner:Lcom/oneplus/base/component/ComponentOwner;

    .line 23
    return-void
.end method

.method private changeState(Lcom/oneplus/base/component/ComponentState;)Lcom/oneplus/base/component/ComponentState;
    .locals 2
    .param p1, "state"    # Lcom/oneplus/base/component/ComponentState;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    .line 39
    .local v0, "oldState":Lcom/oneplus/base/component/ComponentState;
    if-eq v0, p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    .line 42
    sget-object v1, Lcom/oneplus/base/component/BasicComponent;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/base/component/BasicComponent;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    return-object v1
.end method


# virtual methods
.method protected final findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_Owner:Lcom/oneplus/base/component/ComponentOwner;

    invoke-interface {v0, p1}, Lcom/oneplus/base/component/ComponentOwner;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method protected final findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/oneplus/base/component/ComponentSearchCallback",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Lcom/oneplus/base/component/ComponentSearchCallback;, "Lcom/oneplus/base/component/ComponentSearchCallback<TT;>;"
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_Owner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v1, p0, Lcom/oneplus/base/component/BasicComponent;->m_Owner:Lcom/oneplus/base/component/ComponentOwner;

    invoke-static {v0, p1, v1, p2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    move-result v0

    return v0
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
    .line 76
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/base/component/BasicComponent;->PROP_OWNER:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_Owner:Lcom/oneplus/base/component/ComponentOwner;

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/oneplus/base/component/BasicComponent;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    return-object v0

    .line 80
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/base/HandlerBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/base/component/BasicComponent;->verifyAccess()V

    .line 90
    invoke-static {}, Lcom/oneplus/base/component/BasicComponent;->-getcom-oneplus-base-component-ComponentStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v3}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 98
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return v1

    .line 96
    :pswitch_0
    return v0

    .line 103
    :pswitch_1
    sget-object v2, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    invoke-direct {p0, v2}, Lcom/oneplus/base/component/BasicComponent;->changeState(Lcom/oneplus/base/component/ComponentState;)Lcom/oneplus/base/component/ComponentState;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    if-eq v2, v3, :cond_0

    .line 104
    return v1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 110
    iget-object v2, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    sget-object v3, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    if-eq v2, v3, :cond_1

    .line 112
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize() - State has been changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " while initializing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v1

    .line 117
    :cond_1
    sget-object v2, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    invoke-direct {p0, v2}, Lcom/oneplus/base/component/BasicComponent;->changeState(Lcom/oneplus/base/component/ComponentState;)Lcom/oneplus/base/component/ComponentState;

    move-result-object v2

    sget-object v3, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isRunningOrInitializing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 127
    iget-object v1, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    sget-object v2, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    sget-object v2, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isRunningOrInitializing(Z)Z
    .locals 2
    .param p1, "printLog"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RUNNING:Lcom/oneplus/base/component/ComponentState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    sget-object v1, Lcom/oneplus/base/component/ComponentState;->INITIALIZING:Lcom/oneplus/base/component/ComponentState;

    if-ne v0, v1, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_1
    if-eqz p1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Component is not running or initializing"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeinitialize()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lcom/oneplus/base/component/BasicComponent;->-getcom-oneplus-base-component-ComponentStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/component/BasicComponent;->m_State:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/oneplus/base/component/ComponentState;->RELEASED:Lcom/oneplus/base/component/ComponentState;

    invoke-direct {p0, v0}, Lcom/oneplus/base/component/BasicComponent;->changeState(Lcom/oneplus/base/component/ComponentState;)Lcom/oneplus/base/component/ComponentState;

    .line 180
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 162
    return-void

    .line 169
    :pswitch_1
    sget-object v0, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    invoke-direct {p0, v0}, Lcom/oneplus/base/component/BasicComponent;->changeState(Lcom/oneplus/base/component/ComponentState;)Lcom/oneplus/base/component/ComponentState;

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/base/component/BasicComponent;->m_Name:Ljava/lang/String;

    return-object v0
.end method
