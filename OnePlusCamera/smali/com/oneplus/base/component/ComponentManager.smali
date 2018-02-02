.class public Lcom/oneplus/base/component/ComponentManager;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "ComponentManager.java"


# static fields
.field private static final synthetic -com-oneplus-base-component-ComponentCreationPrioritySwitchesValues:[I

.field private static final synthetic -com-oneplus-base-component-ComponentStateSwitchesValues:[I

.field public static final EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/component/ComponentEventArgs",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final m_Builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/component/ComponentBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CreatePriorities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/oneplus/base/component/ComponentCreationPriority;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method private static synthetic -getcom-oneplus-base-component-ComponentCreationPrioritySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/base/component/ComponentManager;->-com-oneplus-base-component-ComponentCreationPrioritySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/component/ComponentManager;->-com-oneplus-base-component-ComponentCreationPrioritySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/component/ComponentCreationPriority;->values()[Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->LOW:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/base/component/ComponentManager;->-com-oneplus-base-component-ComponentCreationPrioritySwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-base-component-ComponentStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/base/component/ComponentManager;->-com-oneplus-base-component-ComponentStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/component/ComponentManager;->-com-oneplus-base-component-ComponentStateSwitchesValues:[I

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

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/component/ComponentState;->RELEASING:Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v1}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

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
    sput-object v0, Lcom/oneplus/base/component/ComponentManager;->-com-oneplus-base-component-ComponentStateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ComponentAdded"

    const-class v2, Lcom/oneplus/base/component/ComponentEventArgs;

    const-class v3, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "ComponentRemoved"

    const-class v2, Lcom/oneplus/base/component/ComponentEventArgs;

    const-class v3, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    return-void
.end method

.method private varargs createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 6
    .param p1, "builder"    # Lcom/oneplus/base/component/ComponentBuilder;
    .param p2, "needInit"    # Z
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v0, 0x0

    .line 94
    .local v0, "component":Lcom/oneplus/base/component/Component;
    :try_start_0
    invoke-interface {p1, p3}, Lcom/oneplus/base/component/ComponentBuilder;->create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 95
    .local v0, "component":Lcom/oneplus/base/component/Component;
    if-nez v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createComponent() - Component is unsupported, builder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v5

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createComponent() - Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_1

    invoke-interface {v0}, Lcom/oneplus/base/component/Component;->initialize()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-object v0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createComponent() - Release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v0}, Lcom/oneplus/base/component/Component;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object v5

    .line 116
    .end local v0    # "component":Lcom/oneplus/base/component/Component;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createComponent() - Fail to create component by builder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    if-eqz v0, :cond_3

    .line 120
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createComponent() - Release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {v0}, Lcom/oneplus/base/component/Component;->release()V

    .line 123
    :cond_3
    return-object v5
.end method

.method private initializeComponent(Lcom/oneplus/base/component/Component;)Z
    .locals 5
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 334
    invoke-static {}, Lcom/oneplus/base/component/ComponentManager;->-getcom-oneplus-base-component-ComponentStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/base/component/Component;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/base/component/Component;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v2}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 342
    const/4 v2, 0x0

    return v2

    .line 340
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 345
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializeComponent() - Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    invoke-interface {p1}, Lcom/oneplus/base/component/Component;->initialize()Z

    move-result v1

    .line 352
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializeComponent() - Fail to initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/base/component/ComponentEventArgs;

    invoke-direct {v3, p1}, Lcom/oneplus/base/component/ComponentEventArgs;-><init>(Lcom/oneplus/base/component/Component;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 359
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializeComponent() - Fail to initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeComponentInternal(Lcom/oneplus/base/component/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 414
    sget-object v0, Lcom/oneplus/base/BaseObject;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/base/component/Component;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeComponentInternal() - Component : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/base/component/ComponentEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/base/component/ComponentEventArgs;-><init>(Lcom/oneplus/base/component/Component;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/component/ComponentManager;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 427
    invoke-interface {p1}, Lcom/oneplus/base/component/Component;->release()V

    .line 411
    return-void
.end method


# virtual methods
.method public varargs addComponentBuilder(Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/oneplus/base/component/ComponentBuilder;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyAccess()V

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyReleaseState()V

    .line 63
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    return-void

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    throw v0
.end method

.method public varargs addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 82
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 83
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilder(Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public final varargs createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "priority"    # Lcom/oneplus/base/component/ComponentCreationPriority;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyAccess()V

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyReleaseState()V

    .line 143
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createComponents("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") - Start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/oneplus/base/component/ComponentManager;->-getcom-oneplus-base-component-ComponentCreationPrioritySwitchesValues()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v3, "newComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/component/Component;>;"
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 171
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentBuilder;

    .line 172
    .local v0, "builder":Lcom/oneplus/base/component/ComponentBuilder;
    invoke-interface {v0}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 174
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    .line 175
    .local v1, "component":Lcom/oneplus/base/component/Component;
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 154
    .end local v0    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .end local v2    # "i":I
    .end local v3    # "newComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/component/Component;>;"
    :pswitch_1
    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {p0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v4

    .line 199
    iget-object v5, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 198
    throw v4

    .line 157
    :pswitch_2
    :try_start_2
    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {p0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :pswitch_3
    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {p0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :pswitch_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Cannot create on-demand components."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    .restart local v2    # "i":I
    .restart local v3    # "newComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/component/Component;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 186
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/component/Component;

    .line 187
    .restart local v1    # "component":Lcom/oneplus/base/component/Component;
    invoke-direct {p0, v1}, Lcom/oneplus/base/component/ComponentManager;->initializeComponent(Lcom/oneplus/base/component/Component;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createComponents() - Release "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {v1}, Lcom/oneplus/base/component/Component;->release()V

    .line 184
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 195
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createComponents("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") - End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final varargs findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 6
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;[",
            "Ljava/lang/Object;",
            ")TTComponent;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const/4 v5, 0x0

    .line 213
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "findComponent() - Fail to lock component manager"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-object v5

    .line 221
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 223
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/component/Component;

    .line 224
    .local v1, "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1}, Lcom/oneplus/base/component/ComponentManager;->initializeComponent(Lcom/oneplus/base/component/Component;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 225
    return-object v1

    .line 221
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 229
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->isDependencyThread()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 249
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 230
    return-object v5

    .line 233
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 235
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentBuilder;

    .line 236
    .local v0, "builder":Lcom/oneplus/base/component/ComponentBuilder;
    invoke-interface {v0}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    if-ne v3, v4, :cond_4

    invoke-interface {v0, p1}, Lcom/oneplus/base/component/ComponentBuilder;->isComponentTypeSupported(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 238
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    .line 239
    .restart local v1    # "component":Lcom/oneplus/base/component/Component;
    if-eqz v1, :cond_4

    .line 241
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 242
    return-object v1

    .line 233
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 249
    .end local v0    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    :cond_5
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    return-object v5

    .line 248
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    .line 249
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 248
    throw v3
.end method

.method public final varargs findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;
    .locals 12
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;[",
            "Ljava/lang/Object;",
            ")[TTComponent;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const/4 v11, 0x0

    .line 268
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v8, 0x1388

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    :cond_0
    const/4 v4, 0x0

    .line 283
    .local v4, "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :try_start_1
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "i":I
    move-object v5, v4

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .local v5, "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :goto_0
    if-ltz v6, :cond_3

    .line 285
    :try_start_2
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/component/Component;

    .line 286
    .local v2, "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/base/component/ComponentManager;->initializeComponent(Lcom/oneplus/base/component/Component;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 288
    if-nez v5, :cond_9

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .local v4, "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :goto_1
    :try_start_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move-object v5, v4

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_0

    .line 270
    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .end local v6    # "i":I
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "findComponent() - Fail to lock component manager"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 271
    return-object v11

    .line 275
    :catch_0
    move-exception v3

    .line 276
    .local v3, "ex":Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "findComponent() - Fail to lock component manager"

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    return-object v11

    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v6    # "i":I
    :cond_2
    move-object v4, v5

    .line 287
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_2

    .line 295
    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->isDependencyThread()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 297
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    :goto_3
    if-ltz v6, :cond_5

    .line 299
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/component/ComponentBuilder;

    .line 300
    .local v1, "builder":Lcom/oneplus/base/component/ComponentBuilder;
    invoke-interface {v1}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v7

    sget-object v8, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    if-ne v7, v8, :cond_4

    invoke-interface {v1, p1}, Lcom/oneplus/base/component/ComponentBuilder;->isComponentTypeSupported(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 302
    const/4 v7, 0x1

    invoke-direct {p0, v1, v7, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    .line 303
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    if-eqz v2, :cond_8

    .line 305
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    if-nez v5, :cond_7

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 308
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :goto_4
    :try_start_6
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    :goto_5
    add-int/lit8 v6, v6, -0x1

    move-object v5, v4

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_3

    :cond_4
    move-object v4, v5

    .line 301
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_5

    .end local v1    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_5
    move-object v4, v5

    .line 315
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    if-eqz v4, :cond_6

    .line 317
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {p1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/component/Component;

    .line 318
    .local v0, "array":[Lcom/oneplus/base/component/Component;, "[TTComponent;"
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 325
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    return-object v0

    .line 321
    .end local v0    # "array":[Lcom/oneplus/base/component/Component;, "[TTComponent;"
    :cond_6
    const/4 v7, 0x0

    :try_start_7
    new-array v7, v7, [Lcom/oneplus/base/component/Component;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 325
    iget-object v8, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    return-object v7

    .line 324
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .end local v6    # "i":I
    :catchall_0
    move-exception v7

    .line 325
    :goto_6
    iget-object v8, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    throw v7

    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v6    # "i":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_6

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v1    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_7
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_4

    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_8
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_5

    .end local v1    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_9
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto/16 :goto_1

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_a
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto/16 :goto_2
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .line 388
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 395
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    .line 396
    .local v0, "components":[Lcom/oneplus/base/component/Component;
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 397
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 398
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/oneplus/base/component/ComponentManager;->removeComponentInternal(Lcom/oneplus/base/component/Component;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 406
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 386
    return-void

    .line 401
    .end local v0    # "components":[Lcom/oneplus/base/component/Component;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    .line 402
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    throw v2
.end method

.method public final removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyAccess()V

    .line 372
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 375
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponentInternal(Lcom/oneplus/base/component/Component;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 369
    return-void

    .line 378
    :catchall_0
    move-exception v0

    .line 379
    iget-object v1, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 378
    throw v0
.end method
