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

.field private volatile m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

.field private volatile m_IsReleased:Z

.field private volatile m_IsStartCalled:Z

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

.field private final m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

.field private final m_ThreadStartCallbackHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsStarted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseThread;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseThread;->PROP_IS_STARTED:Lcom/oneplus/base/PropertyKey;

    .line 53
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Started"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/base/BaseThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/BaseThread;->EVENT_STARTED:Lcom/oneplus/base/EventKey;

    .line 57
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string v1, "Stopping"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/base/BaseThread;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/base/BaseThread;->EVENT_STOPPING:Lcom/oneplus/base/EventKey;

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/BaseThread$ThreadStartCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .param p3, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    .line 125
    iput-object p3, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallbackHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/base/BaseThread;)Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    return-object v0
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
    .line 133
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 134
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 135
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
    .line 142
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 143
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 144
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
    .line 154
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 155
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
    .line 165
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 166
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
    .line 176
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 177
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
    .line 187
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 188
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
    .line 196
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/base/BaseThread;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 197
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p1, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Quit looper"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->onStopping()V

    .line 223
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isDependencyThread()Z
    .locals 1

    .prologue
    .line 233
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
    .line 246
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
    .line 256
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadStartCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/base/BaseThread$1;

    invoke-direct {v1, p0}, Lcom/oneplus/base/BaseThread$1;-><init>(Lcom/oneplus/base/BaseThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    .line 265
    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "onStarted() - Fail to call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onStarting()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected onStopping()V
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/oneplus/base/BaseThread;->EVENT_STOPPING:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseThread;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 286
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
    .line 296
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 297
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    .line 312
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "release() - Start thread to prevent thread leak"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    .line 320
    :cond_1
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
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
    .line 328
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 329
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 330
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
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 338
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 339
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "+++++ START +++++"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "Released before starting thread"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseThread$InternalHandler;->release()V

    .line 385
    iput-object v2, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 395
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "+++++ STOP +++++"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 350
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    :try_start_3
    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    .line 363
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 364
    new-instance v0, Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/base/BaseThread$InternalHandler;-><init>(Lcom/oneplus/base/BaseThread;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 367
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->onStarting()V

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->onStarted()V

    .line 376
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "Enter loop"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseThread$InternalHandler;->release()V

    .line 385
    iput-object v2, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 395
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "+++++ STOP +++++"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    :catchall_1
    move-exception v0

    .line 382
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    if-eqz v1, :cond_5

    .line 384
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseThread$InternalHandler;->release()V

    .line 385
    iput-object v2, p0, Lcom/oneplus/base/BaseThread;->m_Handler:Lcom/oneplus/base/BaseThread$InternalHandler;

    .line 389
    :cond_5
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    if-eqz v1, :cond_6

    .line 390
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    .line 393
    :cond_6
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/base/BaseThread;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    .line 395
    iget-object v1, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v2, "+++++ STOP +++++"

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
    .line 404
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p0}, Lcom/oneplus/base/BaseThread;->verifyAccess()V

    .line 405
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
    .line 417
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
    .line 426
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Thread has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    if-eqz v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Thread is already started."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/oneplus/base/BaseThread;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/base/BaseThread;->m_IsStartCalled:Z

    .line 437
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void
.end method

.method public final verifyAccess()V
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    return-void
.end method
