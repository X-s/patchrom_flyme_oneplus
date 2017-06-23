.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 195
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 196
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 197
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 199
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .locals 4

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 348
    .local v0, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_0
    monitor-exit v2

    .line 352
    return-void

    .line 351
    .end local v0    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 356
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 361
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 364
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 365
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    .line 372
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 373
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 375
    :cond_6
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/content/IIntentSender$Stub;->finalize()V

    throw v0
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v0

    return v0
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I
    .locals 34
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "flagsMask"    # I
    .param p10, "flagsValues"    # I
    .param p11, "options"    # Landroid/os/Bundle;
    .param p12, "container"    # Landroid/app/IActivityContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 212
    :try_start_0
    move-object/from16 v0, p12

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v24, v0

    .line 213
    .local v24, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_0

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_0

    .line 217
    const/4 v2, -0x6

    monitor-exit v33

    .line 329
    :goto_0
    return v2

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v2, :cond_10

    .line 220
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 223
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 229
    .local v13, "finalIntent":Landroid/content/Intent;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    const/16 v27, 0x1

    .line 230
    .local v27, "immutable":Z
    :goto_2
    if-nez v27, :cond_9

    .line 231
    if-eqz p2, :cond_8

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v25

    .line 233
    .local v25, "changes":I
    and-int/lit8 v2, v25, 0x2

    if-nez v2, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    .line 239
    .end local v25    # "changes":I
    :cond_2
    :goto_3
    move/from16 v0, p9

    and-int/lit16 v0, v0, -0xc4

    move/from16 p9, v0

    .line 240
    and-int p10, p10, p9

    .line 241
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v2

    xor-int/lit8 v3, p9, -0x1

    and-int/2addr v2, v3

    or-int v2, v2, p10

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 248
    .local v30, "origId":J
    if-eqz p4, :cond_a

    const/16 v29, 0x1

    .line 249
    .local v29, "sendFinish":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v9, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 250
    .local v9, "userId":I
    const/4 v2, -0x2

    if-ne v9, v2, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v9

    .line 253
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 316
    :cond_4
    :goto_6
    if-eqz v29, :cond_5

    .line 318
    :try_start_1
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move/from16 v21, v0

    move-object/from16 v14, p4

    invoke-interface/range {v14 .. v21}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :cond_5
    :goto_7
    :try_start_2
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    const/4 v2, 0x0

    monitor-exit v33

    goto/16 :goto_0

    .line 328
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v27    # "immutable":Z
    .end local v29    # "sendFinish":Z
    .end local v30    # "origId":J
    :catchall_0
    move-exception v2

    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 226
    .restart local v24    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_6
    :try_start_3
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_1

    .line 229
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 237
    .restart local v27    # "immutable":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    goto :goto_3

    .line 243
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    move-object/from16 p3, v0

    goto :goto_4

    .line 248
    .restart local v30    # "origId":J
    :cond_a
    const/16 v29, 0x0

    goto :goto_5

    .line 255
    .restart local v9    # "userId":I
    .restart local v29    # "sendFinish":Z
    :pswitch_0
    if-nez p11, :cond_d

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    move-object/from16 p11, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    :cond_b
    :goto_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v5, v2, [Landroid/content/Intent;

    .line 265
    .local v5, "allIntents":[Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v2, v2

    new-array v6, v2, [Ljava/lang/String;

    .line 266
    .local v6, "allResolvedTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    invoke-static {v2, v3, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v2, v3, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    :cond_c
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    aput-object v13, v5, v2

    .line 273
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aput-object p3, v6, v2

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v7, p6

    move-object/from16 v8, p11

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 281
    .end local v5    # "allIntents":[Landroid/content/Intent;
    .end local v6    # "allResolvedTypes":[Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 282
    .local v26, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 257
    .end local v26    # "e":Ljava/lang/RuntimeException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_b

    .line 258
    new-instance v28, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 259
    .local v28, "opts":Landroid/os/Bundle;
    move-object/from16 v0, v28

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    move-object/from16 p11, v28

    goto/16 :goto_8

    .line 277
    .end local v28    # "opts":Landroid/os/Bundle;
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v12, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v19, p11

    move/from16 v20, v9

    move-object/from16 v21, p12

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 286
    :pswitch_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move/from16 v18, v0

    move/from16 v19, p1

    move-object/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 295
    :pswitch_2
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v11, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz p4, :cond_f

    const/16 v21, 0x1

    :goto_9
    const/16 v22, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p1

    move-object/from16 v19, p5

    move-object/from16 v20, p11

    move/from16 v23, v9

    invoke-virtual/range {v10 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v32

    .line 299
    .local v32, "sent":I
    if-nez v32, :cond_4

    .line 300
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 295
    .end local v32    # "sent":I
    :cond_f
    const/16 v21, 0x0

    goto :goto_9

    .line 302
    :catch_1
    move-exception v26

    .line 303
    .restart local v26    # "e":Ljava/lang/RuntimeException;
    :try_start_9
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    .line 308
    .end local v26    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v15, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move-object/from16 v14, p3

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_6

    .line 310
    :catch_2
    move-exception v26

    .line 311
    .restart local v26    # "e":Ljava/lang/RuntimeException;
    :try_start_b
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startService intent"

    move-object/from16 v0, v26

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 328
    .end local v9    # "userId":I
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .end local v26    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "immutable":Z
    .end local v29    # "sendFinish":Z
    .end local v30    # "origId":J
    :cond_10
    monitor-exit v33
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 329
    const/4 v2, -0x6

    goto/16 :goto_0

    .line 320
    .restart local v9    # "userId":I
    .restart local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v27    # "immutable":Z
    .restart local v29    # "sendFinish":Z
    .restart local v30    # "origId":J
    :catch_3
    move-exception v2

    goto/16 :goto_7

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 378
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 389
    :goto_0
    return-object v1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 382
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
