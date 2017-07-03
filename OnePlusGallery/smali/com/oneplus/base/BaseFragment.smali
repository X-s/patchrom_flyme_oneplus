.class public abstract Lcom/oneplus/base/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/BaseFragment$InternalHandler;,
        Lcom/oneplus/base/BaseFragment$State;
    }
.end annotation


# static fields
.field public static final LOG_EVENT_HANDLER:I = 0x400

.field public static final LOG_EVENT_HANDLER_CHANGE:I = 0x200

.field public static final LOG_EVENT_RAISE:I = 0x100

.field public static final LOG_PROPERTY_CALLBACK:I = 0x4

.field public static final LOG_PROPERTY_CALLBACK_CHANGE:I = 0x2

.field public static final LOG_PROPERTY_CHANGE:I = 0x1

.field public static final PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseFragment$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

.field private m_Handler:Lcom/oneplus/base/BaseFragment$InternalHandler;

.field private final m_MainThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsRunning"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseFragment;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    .line 52
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "State"

    const-class v2, Lcom/oneplus/base/BaseFragment$State;

    const-class v3, Lcom/oneplus/base/BaseFragment;

    sget-object v4, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->TAG:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseFragment;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_MainThread:Ljava/lang/Thread;

    .line 140
    new-instance v0, Lcom/oneplus/base/BaseFragment$InternalHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseFragment$InternalHandler;-><init>(Lcom/oneplus/base/BaseFragment;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_Handler:Lcom/oneplus/base/BaseFragment$InternalHandler;

    .line 141
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 143
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 150
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/oneplus/base/BaseFragment;->TAG:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_MainThread:Ljava/lang/Thread;

    .line 155
    new-instance v0, Lcom/oneplus/base/BaseFragment$InternalHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseFragment$InternalHandler;-><init>(Lcom/oneplus/base/BaseFragment;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_Handler:Lcom/oneplus/base/BaseFragment$InternalHandler;

    .line 156
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v1, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 158
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 166
    return-void
.end method

.method public addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 174
    return-void
.end method

.method protected final disableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 185
    return-void
.end method

.method protected final disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 196
    return-void
.end method

.method protected final enableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 207
    return-void
.end method

.method protected final enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 1
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 218
    return-void
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
    .line 225
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_Handler:Lcom/oneplus/base/BaseFragment$InternalHandler;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    return-void
.end method

.method public isDependencyThread()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseFragment;->m_MainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p3, "newValue":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/base/BaseObjectAdapter;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->CREATING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->DESTROYING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_Handler:Lcom/oneplus/base/BaseFragment$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseFragment$InternalHandler;->release()V

    .line 281
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 282
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->DESTROYED:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->PAUSING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 292
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 293
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->PAUSED:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 302
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RESUMING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/oneplus/base/BaseFragment;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseFragment;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method protected raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 316
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 324
    return-void
.end method

.method public removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 338
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 345
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
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
    .line 357
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final verifyAccess()V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseFragment;->m_MainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    return-void
.end method
