.class public Lcom/oneplus/base/component/ComponentManager;
.super Lcom/oneplus/base/HandlerBaseObject;
.source "ComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/component/ComponentManager$1;
    }
.end annotation


# static fields
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
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ComponentAdded"

    const-class v2, Lcom/oneplus/base/component/ComponentEventArgs;

    const-class v3, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    .line 28
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "ComponentRemoved"

    const-class v2, Lcom/oneplus/base/component/ComponentEventArgs;

    const-class v3, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/base/HandlerBaseObject;-><init>(Z)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    return-void
.end method

.method private varargs createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    .locals 6
    .param p1, "builder"    # Lcom/oneplus/base/component/ComponentBuilder;
    .param p2, "needInit"    # Z
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x0

    .line 93
    .local v0, "component":Lcom/oneplus/base/component/Component;
    :try_start_0
    invoke-interface {p1, p3}, Lcom/oneplus/base/component/ComponentBuilder;->create([Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 96
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createComponent() - Component is unsupported, builder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createComponent() - Component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p2, :cond_2

    invoke-interface {v0}, Lcom/oneplus/base/component/Component;->initialize()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createComponent() - Release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0}, Lcom/oneplus/base/component/Component;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createComponent() - Fail to create component by builder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    if-eqz v0, :cond_0

    .line 119
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createComponent() - Release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v0}, Lcom/oneplus/base/component/Component;->release()V

    goto :goto_0

    .line 111
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    .line 112
    goto :goto_0
.end method

.method private initializeComponent(Lcom/oneplus/base/component/Component;)Z
    .locals 5
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 333
    sget-object v3, Lcom/oneplus/base/component/ComponentManager$1;->$SwitchMap$com$oneplus$base$component$ComponentState:[I

    sget-object v2, Lcom/oneplus/base/component/Component;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v2}, Lcom/oneplus/base/component/Component;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/component/ComponentState;

    invoke-virtual {v2}, Lcom/oneplus/base/component/ComponentState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 341
    const/4 v1, 0x0

    .line 360
    :goto_0
    return v1

    .line 339
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeComponent() - Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :try_start_0
    invoke-interface {p1}, Lcom/oneplus/base/component/Component;->initialize()Z

    move-result v1

    .line 351
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 352
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeComponent() - Fail to initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    sget-object v2, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/base/component/ComponentEventArgs;

    invoke-direct {v3, p1}, Lcom/oneplus/base/component/ComponentEventArgs;-><init>(Lcom/oneplus/base/component/Component;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/base/component/ComponentManager;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 358
    .restart local v1    # "result":Z
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeComponent() - Fail to initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeComponentInternal(Lcom/oneplus/base/component/Component;)V
    .locals 3
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 413
    sget-object v0, Lcom/oneplus/base/BaseObject;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/base/component/Component;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeComponentInternal() - Component : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v1, Lcom/oneplus/base/component/ComponentEventArgs;

    invoke-direct {v1, p1}, Lcom/oneplus/base/component/ComponentEventArgs;-><init>(Lcom/oneplus/base/component/Component;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/component/ComponentManager;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 426
    invoke-interface {p1}, Lcom/oneplus/base/component/Component;->release()V

    goto :goto_0
.end method


# virtual methods
.method public varargs addComponentBuilder(Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/oneplus/base/component/ComponentBuilder;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyAccess()V

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyReleaseState()V

    .line 62
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 71
    return-void

    .line 65
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

    iget-object v1, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public varargs addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "builders"    # [Lcom/oneplus/base/component/ComponentBuilder;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 81
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 82
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilder(Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public final varargs createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "priority"    # Lcom/oneplus/base/component/ComponentCreationPriority;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyAccess()V

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyReleaseState()V

    .line 142
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createComponents("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - Start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v4, Lcom/oneplus/base/component/ComponentManager$1;->$SwitchMap$com$oneplus$base$component$ComponentCreationPriority:[I

    invoke-virtual {p1}, Lcom/oneplus/base/component/ComponentCreationPriority;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 166
    :goto_1
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_CreatePriorities:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, "newComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/component/Component;>;"
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_2

    .line 170
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentBuilder;

    .line 171
    .local v0, "builder":Lcom/oneplus/base/component/ComponentBuilder;
    invoke-interface {v0}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 173
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    .line 174
    .local v1, "component":Lcom/oneplus/base/component/Component;
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 153
    .end local v0    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .end local v2    # "i":I
    .end local v3    # "newComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/component/Component;>;"
    :pswitch_1
    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {p0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 156
    :pswitch_2
    :try_start_2
    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->HIGH:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {p0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    :pswitch_3
    sget-object v4, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    invoke-virtual {p0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    :pswitch_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot create on-demand components."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    .restart local v2    # "i":I
    .restart local v3    # "newComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/component/Component;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_3
    if-ltz v2, :cond_4

    .line 185
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/component/Component;

    .line 186
    .restart local v1    # "component":Lcom/oneplus/base/component/Component;
    invoke-direct {p0, v1}, Lcom/oneplus/base/component/ComponentManager;->initializeComponent(Lcom/oneplus/base/component/Component;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createComponents() - Release "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-interface {v1}, Lcom/oneplus/base/component/Component;->release()V

    .line 183
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 194
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createComponents("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 148
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
    const/4 v3, 0x0

    .line 212
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v5, "findComponent() - Fail to lock component manager"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 252
    :goto_0
    return-object v1

    .line 220
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 222
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/component/Component;

    .line 223
    .local v1, "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/oneplus/base/component/ComponentManager;->initializeComponent(Lcom/oneplus/base/component/Component;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 220
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 228
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->isDependencyThread()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 248
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v3

    goto :goto_0

    .line 232
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 234
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/component/ComponentBuilder;

    .line 235
    .local v0, "builder":Lcom/oneplus/base/component/ComponentBuilder;
    invoke-interface {v0}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v4

    sget-object v5, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    if-ne v4, v5, :cond_4

    invoke-interface {v0, p1}, Lcom/oneplus/base/component/ComponentBuilder;->isComponentTypeSupported(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    .line 238
    .restart local v1    # "component":Lcom/oneplus/base/component/Component;
    if-eqz v1, :cond_4

    .line 240
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 232
    .end local v1    # "component":Lcom/oneplus/base/component/Component;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 248
    .end local v0    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    :cond_5
    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v3

    .line 252
    goto :goto_0

    .line 248
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public final varargs findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;
    .locals 11
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
    const/4 v0, 0x0

    .line 267
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v8, 0x1388

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 269
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v8, "findComponent() - Fail to lock component manager"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v3

    .line 275
    .local v3, "ex":Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->TAG:Ljava/lang/String;

    const-string v8, "findComponent() - Fail to lock component manager"

    invoke-static {v7, v8, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 281
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v4, 0x0

    .line 282
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
    :goto_1
    if-ltz v6, :cond_1

    .line 284
    :try_start_2
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/component/Component;

    .line 285
    .local v2, "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v2}, Lcom/oneplus/base/component/ComponentManager;->initializeComponent(Lcom/oneplus/base/component/Component;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 287
    if-nez v5, :cond_6

    .line 288
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :goto_2
    :try_start_3
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :goto_3
    add-int/lit8 v6, v6, -0x1

    move-object v5, v4

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_1

    .line 294
    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->isDependencyThread()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 296
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    :goto_4
    if-ltz v6, :cond_2

    .line 298
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/component/ComponentBuilder;

    .line 299
    .local v1, "builder":Lcom/oneplus/base/component/ComponentBuilder;
    invoke-interface {v1}, Lcom/oneplus/base/component/ComponentBuilder;->getPriority()Lcom/oneplus/base/component/ComponentCreationPriority;

    move-result-object v7

    sget-object v8, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    if-ne v7, v8, :cond_5

    invoke-interface {v1, p1}, Lcom/oneplus/base/component/ComponentBuilder;->isComponentTypeSupported(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 301
    const/4 v7, 0x1

    invoke-direct {p0, v1, v7, p2}, Lcom/oneplus/base/component/ComponentManager;->createComponent(Lcom/oneplus/base/component/ComponentBuilder;Z[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    .line 302
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    if-eqz v2, :cond_5

    .line 304
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 305
    if-nez v5, :cond_4

    .line 306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :goto_5
    :try_start_5
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    :goto_6
    add-int/lit8 v6, v6, -0x1

    move-object v5, v4

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_4

    .end local v1    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    :cond_2
    move-object v4, v5

    .line 314
    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    if-eqz v4, :cond_3

    .line 316
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Lcom/oneplus/base/component/Component;

    check-cast v0, [Lcom/oneplus/base/component/Component;

    .line 317
    .local v0, "array":[Lcom/oneplus/base/component/Component;, "[TTComponent;"
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 324
    iget-object v7, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 320
    .end local v0    # "array":[Lcom/oneplus/base/component/Component;, "[TTComponent;"
    :cond_3
    const/4 v7, 0x0

    :try_start_6
    new-array v7, v7, [Lcom/oneplus/base/component/Component;

    check-cast v7, [Lcom/oneplus/base/component/Component;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 324
    iget-object v8, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v7

    goto/16 :goto_0

    .end local v6    # "i":I
    :catchall_0
    move-exception v7

    :goto_7
    iget-object v8, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v6    # "i":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_7

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v1    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_4
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_5

    .end local v2    # "component":Lcom/oneplus/base/component/Component;
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_5
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_6

    .end local v1    # "builder":Lcom/oneplus/base/component/ComponentBuilder;
    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v2    # "component":Lcom/oneplus/base/component/Component;
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_6
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_2

    .end local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    :cond_7
    move-object v4, v5

    .end local v5    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    .restart local v4    # "foundComponents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/component/Component;>;"
    goto :goto_3
.end method

.method protected onRelease()V
    .locals 4

    .prologue
    .line 387
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 394
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/oneplus/base/component/Component;

    .line 395
    .local v0, "components":[Lcom/oneplus/base/component/Component;
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 396
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 397
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/oneplus/base/component/ComponentManager;->removeComponentInternal(Lcom/oneplus/base/component/Component;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 405
    invoke-super {p0}, Lcom/oneplus/base/HandlerBaseObject;->onRelease()V

    .line 406
    return-void

    .line 401
    .end local v0    # "components":[Lcom/oneplus/base/component/Component;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public final removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/oneplus/base/component/ComponentManager;->verifyAccess()V

    .line 371
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 374
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponentInternal(Lcom/oneplus/base/component/Component;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 380
    return-void

    .line 378
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/base/component/ComponentManager;->m_Lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
