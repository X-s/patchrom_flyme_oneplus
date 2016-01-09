.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$InternalListener;,
        Landroid/speech/SpeechRecognizer$Connection;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_SCORES:Ljava/lang/String; = "confidence_scores"

.field private static final DBG:Z = false

.field public static final ERROR_AUDIO:I = 0x3

.field public static final ERROR_CLIENT:I = 0x5

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final ERROR_NO_MATCH:I = 0x7

.field public static final ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_SPEECH_TIMEOUT:I = 0x6

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_CHANGE_LISTENER:I = 0x4

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field public static final RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private mConnection:Landroid/speech/SpeechRecognizer$Connection;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/speech/SpeechRecognizer$InternalListener;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/speech/IRecognitionService;

.field private final mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    .line 158
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;-><init>(Landroid/speech/SpeechRecognizer$1;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 165
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    .line 167
    return-void
.end method

.method static synthetic access$000(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleStopMessage()V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->handleCancelMessage()V

    return-void
.end method

.method static synthetic access$300(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer;->handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static synthetic access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;
    .locals 0
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/speech/IRecognitionService;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    return-object p1
.end method

.method static synthetic access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;
    .locals 0
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/speech/SpeechRecognizer$Connection;

    .prologue
    .line 56
    iput-object p1, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    return-object p1
.end method

.method private static checkIsCalledFromMainThread()V
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    return-void
.end method

.method private checkOpenConnection()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    .line 396
    const-string v0, "SpeechRecognizer"

    const-string/jumbo v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 242
    new-instance v0, Landroid/speech/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Landroid/speech/SpeechRecognizer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private handleCancelMessage()V
    .locals 3

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 383
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0
.end method

.method private handleChangeListener(Landroid/speech/RecognitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 403
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    # setter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    .line 404
    return-void
.end method

.method private handleStartListening(Landroid/content/Intent;)V
    .locals 3
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, p1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0
.end method

.method private handleStopMessage()V
    .locals 3

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;->checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private putMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 331
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 332
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v0, v1}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 421
    :cond_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 422
    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    .line 423
    iput-object v2, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    .line 424
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    # setter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    .line 425
    return-void

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 254
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 255
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 256
    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .locals 8
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 269
    const-string v3, "SpeechRecognizer"

    const-string/jumbo v4, "startListening"

    invoke-static {v3, v4}, Landroid/util/SeempJavaFilter;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v0, "SpeechRecognizer|startListening|--end"

    .line 271
    .local v0, "paras":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/SeempLog;->record(Ljava/lang/String;)I

    .line 274
    .end local v0    # "paras":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 275
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "intent must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_1
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 278
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    if-nez v3, :cond_4

    .line 279
    new-instance v3, Landroid/speech/SpeechRecognizer$Connection;

    invoke-direct {v3, p0, v5}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V

    iput-object v3, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "serviceIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    .line 284
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_recognition_service"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "serviceComponent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    const-string v3, "SpeechRecognizer"

    const-string/jumbo v4, "no selected voice recognition service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-virtual {v3, v7}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    .line 307
    .end local v1    # "serviceComponent":Ljava/lang/String;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 293
    .restart local v1    # "serviceComponent":Ljava/lang/String;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    .end local v1    # "serviceComponent":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 299
    const-string v3, "SpeechRecognizer"

    const-string v4, "bind to recognition service failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput-object v5, p0, Landroid/speech/SpeechRecognizer;->mConnection:Landroid/speech/SpeechRecognizer$Connection;

    .line 301
    iput-object v5, p0, Landroid/speech/SpeechRecognizer;->mService:Landroid/speech/IRecognitionService;

    .line 302
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-virtual {v3, v7}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 306
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v6, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Landroid/speech/SpeechRecognizer;->checkIsCalledFromMainThread()V

    .line 321
    iget-object v0, p0, Landroid/speech/SpeechRecognizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/speech/SpeechRecognizer;->putMessage(Landroid/os/Message;)V

    .line 322
    return-void
.end method
