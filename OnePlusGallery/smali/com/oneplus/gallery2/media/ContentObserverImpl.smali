.class public Lcom/oneplus/gallery2/media/ContentObserverImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "ContentObserverImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;,
        Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;
    }
.end annotation


# static fields
.field private static final INTERVAL_CHECK_CONTENT_CHANGES:J = 0x7d0L

.field private static final MSG_CHECK_CONTENT_CHANGES:I = 0x2738

.field private static final MSG_NOTIFY_CONTENT_CHANGED:I = 0x2739

.field private static final MSG_REGISTER_CONTENT_CHANGED_CB:I = 0x271a

.field private static final MSG_UNREGISTER_CONTENT_CHANGED_CB:I = 0x271b

.field private static final PATTERN_SPECIFIC_CONTENT_URI:Ljava/lang/String; = ".+/[\\d]+$"


# instance fields
.field private volatile m_ContentObserverThread:Landroid/os/HandlerThread;

.field private volatile m_ContentObserverThreadHandler:Landroid/os/Handler;

.field private m_ContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContentResolver:Landroid/content/ContentResolver;

.field private final m_Lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseApplication;)V
    .locals 2
    .param p1, "application"    # Lcom/oneplus/base/BaseApplication;

    .prologue
    .line 140
    const-string v0, "Content Observer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_Lock:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ContentObserverImpl;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/media/ContentObserverImpl;Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ContentObserverImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ContentObserverImpl;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ContentObserverImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->handleContentObserverThreadMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkContentChanges(Landroid/net/Uri;)V
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 148
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 154
    .local v1, "observer":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
    iget-wide v2, v1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->lastChangedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 156
    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v1, p1, v6}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v1, v6}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->notifyChange(Z)V

    goto :goto_0
.end method

.method private handleContentObserverThreadMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 174
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->checkContentChanges(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->notifyContentChangedInternal(Landroid/net/Uri;)V

    goto :goto_0

    .line 180
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->registerContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    goto :goto_0

    .line 183
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x271a -> :sswitch_2
        0x271b -> :sswitch_3
        0x2738 -> :sswitch_0
        0x2739 -> :sswitch_1
    .end sparse-switch
.end method

.method private isContentObserverThread()Z
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyContentChangedInternal(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 223
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "uriString":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 228
    .local v1, "observer":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
    iget-object v3, v1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private registerContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 303
    .local v0, "observer":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
    if-nez v0, :cond_2

    .line 305
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerContentChangedCallback() - Register to "

    iget-object v3, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 307
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 308
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .end local v0    # "observer":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
    iget-object v1, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/net/Uri;Landroid/os/Handler;)V

    .line 309
    .restart local v0    # "observer":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 312
    :cond_2
    iget-object v1, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method private startContentObserverThread()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 325
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Gallery media content observer thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v2, "startContentObserverThread() - Start content observer thread [start]"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 328
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$1;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/gallery2/media/ContentObserverImpl$1;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    .line 336
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v2, "startContentObserverThread() - Start content observer thread [end]"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    .prologue
    .line 345
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 348
    .local v0, "observer":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v2, "unregisterContentChangedCallback() - Unregister from "

    iget-object v3, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyContentChanged() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v1, "notifyContentChanged() - Content URI : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->notifyContentChangedInternal(Landroid/net/Uri;)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->startContentObserverThread()V

    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2739

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 248
    iput-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    .line 252
    :cond_0
    iput-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 255
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 256
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 267
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->startContentObserverThread()V

    .line 268
    return-void
.end method

.method public registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 275
    if-nez p1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerContentChangedCallback() - No content URI"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-object v0

    .line 280
    :cond_0
    if-nez p2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerContentChangedCallback() - No call-back"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)V

    .line 286
    .local v0, "handle":Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->registerContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->startContentObserverThread()V

    .line 291
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x271a

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
