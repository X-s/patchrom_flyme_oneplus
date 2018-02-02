.class public abstract Lcom/oneplus/base/BaseThread;
.super Ljava/lang/Thread;
.source "BaseThread.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/BaseThread$InternalHandler;,
        Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    }
.end annotation


# static fields
.field public static final EVENT_STARTED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_STOPPING:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_EVENT_HANDLER:I = 0x400

.field public static final LOG_EVENT_HANDLER_CHANGE:I = 0x200

.field public static final LOG_EVENT_RAISE:I = 0x100

.field public static final LOG_PROPERTY_CALLBACK:I = 0x4

.field public static final LOG_PROPERTY_CALLBACK_CHANGE:I = 0x2

.field public static final LOG_PROPERTY_CHANGE:I = 0x1

.field private static final MSG_QUIT:I = -0x1

.field public static final PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;
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
.field protected final TAG:Ljava/lang/String;

.field private volatile m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

.field private m_EnableThreadMonitor:Z

.field private volatile m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

.field private volatile m_IsReleased:Z

.field private volatile m_IsStartCalled:Z

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

.field private final m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

.field private final m_ThreadStartCallbackHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/oneplus/base/BaseThread;)Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseThread;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseThread;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 53
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Started"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/base/BaseThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/BaseThread;->EVENT_STARTED:Lcom/oneplus/base/EventKey;

    .line 57
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Stopping"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/base/BaseThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/BaseThread;->EVENT_STOPPING:Lcom/oneplus/base/EventKey;

    .line 10
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/base/BaseThread;-><init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;Z)V

    .line 121
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .param p4, "enableThreadMonitor"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    .line 139
    iput-object p3, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallbackHandler:Landroid/os/Handler;

    .line 140
    iput-boolean p4, p0, Lcom/oneplus/base/BaseThread;->m_EnableThreadMonitor:Z

    .line 134
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
    .line 148
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 149
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 146
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
    .line 157
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 158
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 155
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
    .line 169
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 167
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
    .line 180
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 178
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
    .line 191
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 189
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
    .line 202
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 200
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
    .line 211
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/base/BaseThread;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 212
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 215
    :cond_1
    iget-object v0, p1, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleMessage() - Quit looper"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->onStopping()V

    .line 238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isDependencyThread()Z
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

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
    .line 261
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p3, "newValue":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/base/BaseObjectAdapter;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/base/BaseThread$1;

    invoke-direct {v1, p0}, Lcom/oneplus/base/BaseThread$1;-><init>(Lcom/oneplus/base/BaseThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStarted() - Fail to call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    return-void
.end method

.method protected onStarting()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method protected onStopping()V
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/oneplus/base/BaseThread;->EVENT_STOPPING:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 298
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
    .line 311
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 309
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 320
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 321
    return-void

    .line 323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    .line 327
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release() - Start thread to prevent thread leak"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    .line 335
    :cond_1
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 317
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 343
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 344
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 341
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
    .line 352
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 353
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 350
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "+++++ START +++++"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 367
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Released before starting thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseThread$InternalHandler;->release()V

    .line 401
    iput-object v2, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 409
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_EnableThreadMonitor:Z

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "+++++ STOP +++++"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    :cond_3
    :try_start_3
    monitor-exit p0

    .line 375
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 378
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 379
    new-instance v0, Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseThread$InternalHandler;-><init>(Lcom/oneplus/base/BaseThread;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 382
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_EnableThreadMonitor:Z

    if-eqz v0, :cond_4

    .line 383
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 386
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 389
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 392
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enter loop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseThread$InternalHandler;->release()V

    .line 401
    iput-object v2, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v0, :cond_6

    .line 406
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 409
    :cond_6
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_EnableThreadMonitor:Z

    if-eqz v0, :cond_7

    .line 410
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "+++++ STOP +++++"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 396
    :catchall_1
    move-exception v0

    .line 398
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    if-eqz v1, :cond_8

    .line 400
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseThread$InternalHandler;->release()V

    .line 401
    iput-object v2, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 405
    :cond_8
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v1, :cond_9

    .line 406
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 409
    :cond_9
    iget-boolean v1, p0, Lcom/oneplus/base/BaseThread;->m_EnableThreadMonitor:Z

    if-eqz v1, :cond_a

    .line 410
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 412
    :cond_a
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "+++++ STOP +++++"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    throw v0
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
    .line 421
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 422
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

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
    .line 434
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 443
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Thread has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    if-eqz v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Thread is already started."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    .line 454
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 440
    return-void
.end method

.method public final verifyAccess()V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    return-void
.end method
