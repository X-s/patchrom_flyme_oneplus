.class public Lcom/oneplus/gallery2/media/ContentObserverImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "ContentObserverImpl.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;,
        Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;
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

    .prologue
    const-string/jumbo v0, "Content Observer"

    .line 140
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_Lock:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Z
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/ContentObserverImpl;Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->handleContentObserverThreadMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkContentChanges(Landroid/net/Uri;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 154
    iget-wide v6, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->lastChangedTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_3

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 156
    if-nez p1, :cond_4

    .line 162
    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->notifyChange(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 154
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v0, p1, v2}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 165
    :cond_5
    return-void
.end method

.method private handleContentObserverThreadMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 174
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->checkContentChanges(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

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

    if-eq v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifyContentChangedInternal(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 228
    iget-object v3, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v0, p1, v4}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    .line 234
    :cond_1
    return-void

    .line 224
    :cond_2
    return-void
.end method

.method private registerContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 303
    if-eqz v0, :cond_1

    .line 312
    :goto_1
    iget-object v0, v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void

    .line 301
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContentChangedCallback() - Register to "

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 308
    :goto_2
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/net/Uri;Landroid/os/Handler;)V

    .line 309
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 307
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    goto :goto_2
.end method

.method private startContentObserverThread()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_Lock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 321
    :goto_0
    monitor-exit v1

    .line 339
    return-void

    .line 320
    :cond_0
    return-void

    .line 325
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Gallery media content observer thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContentObserverThread() - Start content observer thread [start]"

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

    const-string/jumbo v2, "startContentObserverThread() - Start content observer thread [end]"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unregisterContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentObserver;

    .line 348
    if-nez v0, :cond_2

    .line 349
    :cond_0
    return-void

    .line 346
    :cond_1
    return-void

    .line 348
    :cond_2
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

    const-string/jumbo v2, "unregisterContentChangedCallback() - Unregister from "

    iget-object v3, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 353
    return-void
.end method


# virtual methods
.method public notifyContentChanged(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyContentChanged() - Content URI : "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->startContentObserverThread()V

    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x2739

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyContentChanged() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void

    .line 211
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->notifyContentChangedInternal(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    iput-object v2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 255
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 256
    return-void

    .line 244
    :cond_0
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

    goto :goto_0
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

    .prologue
    const/4 v2, 0x0

    .line 275
    if-eqz p1, :cond_0

    .line 280
    if-eqz p2, :cond_1

    .line 285
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)V

    .line 286
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->startContentObserverThread()V

    .line 291
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x271a

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContentChangedCallback() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v2

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContentChangedCallback() - No call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-object v2

    .line 287
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->registerContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    goto :goto_0
.end method
