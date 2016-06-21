.class public Lcom/android/systemui_ex/usb/StorageNotification;
.super Lcom/android/systemui_ex/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/usb/StorageNotification$1;,
        Lcom/android/systemui_ex/usb/StorageNotification$StorageNotificationEventListener;
    }
.end annotation


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui_ex/SystemUI;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/usb/StorageNotification;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/usb/StorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/usb/StorageNotification;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui_ex/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v1, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui_ex/usb/UsbStorageActivity;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v15, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 135
    .local v7, "pi":Landroid/app/PendingIntent;
    const v2, 0x1040535

    const v3, 0x1040536

    const v4, 0x108008a

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui_ex/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 248
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v15    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v1, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const v9, 0x1040555

    const v10, 0x1040556

    const v11, 0x10800ab

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 148
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 149
    :cond_1
    const-string v1, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 155
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v1, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 163
    const-string v1, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    const v9, 0x104055d

    const v10, 0x104055e

    const v11, 0x108007a

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 185
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 183
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 192
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 193
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 195
    :cond_6
    const-string v1, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v15, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 204
    .restart local v7    # "pi":Landroid/app/PendingIntent;
    const v2, 0x1040557

    const v3, 0x1040558

    const v4, 0x108007b

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 208
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 209
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v1, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 214
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 215
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v15, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 218
    .restart local v7    # "pi":Landroid/app/PendingIntent;
    const v2, 0x1040559

    const v3, 0x104055a

    const v4, 0x108007b

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 222
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 223
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v1, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 228
    const v9, 0x104055f

    const v10, 0x1040560

    const v11, 0x108007b

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 233
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 234
    :cond_9
    const-string v1, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 239
    const v9, 0x104055b

    const v10, 0x104055c

    const v11, 0x108008a

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui_ex/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 244
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 246
    :cond_a
    const-string v1, "StorageNotification"

    const-string v2, "Ignoring unknown state {%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUmsAvailable:Z

    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "st":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    const/4 p1, 0x0

    .line 121
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 122
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 371
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 431
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 375
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 378
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 382
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v8, :cond_2

    if-eqz p4, :cond_2

    .line 387
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 388
    .local v4, "notificationId":I
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 391
    .end local v4    # "notificationId":I
    :cond_2
    if-eqz p4, :cond_5

    .line 392
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 393
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 394
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 396
    .local v3, "message":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v8, :cond_3

    .line 397
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 398
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v8, Landroid/app/Notification;->when:J

    .line 401
    :cond_3
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    .line 403
    if-eqz p5, :cond_6

    .line 404
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v9, 0x10

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 409
    :goto_1
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 410
    if-nez p6, :cond_4

    .line 411
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v8, v9, v2, v10, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 416
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v8, Landroid/app/Notification;->icon:I

    .line 417
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, v8, Landroid/app/Notification;->color:I

    .line 419
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v7, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 420
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x1

    iput v9, v8, Landroid/app/Notification;->visibility:I

    .line 421
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-string v9, "sys"

    iput-object v9, v8, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 424
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v8, Landroid/app/Notification;->icon:I

    .line 425
    .restart local v4    # "notificationId":I
    if-eqz p4, :cond_7

    .line 426
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 371
    .end local v4    # "notificationId":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 406
    .restart local v3    # "message":Ljava/lang/CharSequence;
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "r":Landroid/content/res/Resources;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 429
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/CharSequence;
    .restart local v4    # "notificationId":I
    :cond_7
    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v4, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 13
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "sound"    # Z
    .param p5, "visible"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    const-string v9, "persist.sys.ums"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 278
    const/4 p1, 0x0

    .line 279
    const/4 p2, 0x0

    .line 280
    const/16 p3, 0x0

    .line 281
    const/16 p4, 0x0

    .line 282
    const/16 p5, 0x0

    .line 283
    const/16 p6, 0x0

    .line 286
    :cond_0
    if-nez p5, :cond_2

    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    .line 354
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 293
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v6, :cond_1

    .line 297
    if-eqz p5, :cond_5

    .line 298
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 299
    .local v7, "r":Landroid/content/res/Resources;
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 300
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 302
    .local v4, "message":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v9, :cond_3

    .line 303
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    iput-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 304
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 305
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    .line 308
    :cond_3
    if-eqz p4, :cond_6

    .line 309
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/app/Notification;->defaults:I

    .line 314
    :goto_1
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x2

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 316
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 317
    if-nez p6, :cond_4

    .line 318
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v9, v10, v3, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 322
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1060059

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v9, Landroid/app/Notification;->color:I

    .line 324
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v8, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 325
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x1

    iput v10, v9, Landroid/app/Notification;->visibility:I

    .line 326
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-string v10, "sys"

    iput-object v10, v9, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 328
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "adb_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_7

    const/4 v2, 0x1

    .line 333
    .local v2, "adbOn":Z
    :goto_2
    if-nez v2, :cond_5

    .line 343
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 347
    .end local v2    # "adbOn":Z
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v5, v9, Landroid/app/Notification;->icon:I

    .line 348
    .local v5, "notificationId":I
    if-eqz p5, :cond_8

    .line 349
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 277
    .end local v5    # "notificationId":I
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 311
    .restart local v4    # "message":Ljava/lang/CharSequence;
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 328
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 352
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .restart local v5    # "notificationId":I
    :cond_8
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 5

    .prologue
    .line 89
    iget-object v3, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 90
    iget-object v3, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 94
    .local v0, "connected":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 98
    new-instance v1, Lcom/android/systemui_ex/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui_ex/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui_ex/usb/StorageNotification;Lcom/android/systemui_ex/usb/StorageNotification$1;)V

    .line 99
    .local v1, "listener":Lcom/android/systemui_ex/usb/StorageNotification$StorageNotificationEventListener;
    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 100
    iget-object v3, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 101
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 15
    .param p1, "available"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v14, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui_ex/usb/UsbStorageActivity;

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/android/systemui_ex/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 261
    .local v6, "pi":Landroid/app/PendingIntent;
    const v1, 0x1040533

    const v2, 0x1040534

    const v3, 0x10806a7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui_ex/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 269
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui_ex/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
