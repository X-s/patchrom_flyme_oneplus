.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 634
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 639
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 640
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1049
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1119
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .locals 15
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 871
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    if-nez p4, :cond_4

    const/4 v12, 0x0

    .line 873
    .local v12, "description":Ljava/lang/String;
    :goto_0
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", suggestedStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .end local v12    # "description":Ljava/lang/String;
    :cond_0
    const/4 v14, 0x0

    .line 878
    .local v14, "preferSuggestedStream":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move/from16 v0, p1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    const/4 v14, 0x1

    .line 882
    :cond_1
    if-eqz p4, :cond_2

    if-eqz v14, :cond_6

    .line 883
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 885
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    const-string v1, "MediaSessionService"

    const-string v2, "No active session to adjust, skipping media only volume event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_3
    :goto_1
    return-void

    .line 872
    .end local v14    # "preferSuggestedStream":Z
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 891
    .restart local v14    # "preferSuggestedStream":Z
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v1

    const-string v6, "MediaSessionService"

    move/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 894
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 895
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    const-string v2, "Error adjusting default volume."

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 898
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/4 v11, 0x1

    move-object/from16 v6, p4

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    goto :goto_1
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 18
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 935
    if-eqz p3, :cond_3

    .line 936
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 937
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending media key to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    if-eqz p2, :cond_1

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 944
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$2700(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    .line 995
    :goto_1
    return-void

    .line 944
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 949
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    .line 950
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 951
    .local v16, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_4

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 953
    :cond_4
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 954
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending media key to last known PendingIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or restored Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_5
    if-eqz p2, :cond_6

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 961
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v5, "mediaButtonIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 964
    :try_start_0
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 965
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$2700(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 973
    :catch_0
    move-exception v15

    .line 974
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending key event to media button receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 965
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_7
    const/4 v4, -0x1

    goto :goto_2

    .line 969
    :cond_8
    :try_start_1
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 978
    .end local v5    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_9
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 979
    const-string v2, "MediaSessionService"

    const-string v3, "Sending media key ordered broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_a
    if-eqz p2, :cond_b

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 985
    :cond_b
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 986
    .local v7, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 987
    if-eqz p2, :cond_c

    .line 988
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1
.end method

.method private handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 905
    if-eqz p3, :cond_1

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 911
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2

    move v2, v3

    .line 912
    .local v2, "isLongPress":Z
    :goto_1
    if-nez v0, :cond_4

    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 914
    iput-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 915
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    goto :goto_0

    .end local v2    # "isLongPress":Z
    :cond_2
    move v2, v4

    .line 911
    goto :goto_1

    .line 916
    .restart local v2    # "isLongPress":Z
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    .line 917
    iput-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 918
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    goto :goto_0

    .line 920
    :cond_4
    if-ne v0, v3, :cond_0

    .line 921
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v3, :cond_0

    .line 922
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 923
    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 925
    invoke-static {p1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 926
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 927
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1039
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidLocalStreamType(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1045
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1035
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startVoiceInput(Z)V
    .locals 8
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 998
    const/4 v3, 0x0

    .line 1004
    .local v3, "voiceIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1005
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 1006
    .local v1, "isLocked":Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1007
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v3    # "voiceIntent":Landroid/content/Intent;
    const-string v4, "MediaSessionService"

    const-string v5, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_1
    if-eqz p1, :cond_0

    .line 1017
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1020
    :cond_0
    if-eqz v3, :cond_1

    .line 1021
    const/high16 v4, 0x10800000

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1023
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :cond_1
    if-eqz p1, :cond_2

    .line 1029
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1032
    :cond_2
    :goto_2
    return-void

    .end local v1    # "isLocked":Z
    :cond_3
    move v1, v5

    .line 1005
    goto :goto_0

    .line 1010
    .restart local v1    # "isLocked":Z
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .restart local v3    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    const-string v4, "MediaSessionService"

    const-string v5, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v4, v5

    .line 1011
    goto :goto_3

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    if-eqz p1, :cond_2

    .line 1029
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1028
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_6

    .line 1029
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    throw v4
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 852
    const/4 v6, 0x0

    .line 853
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 857
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 861
    :cond_0
    const-string v5, "getSessions"

    move v0, p3

    move v1, p4

    move v2, p2

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 865
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 866
    return v7
.end method


# virtual methods
.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 12
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 689
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 690
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 693
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 694
    .local v4, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 695
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v8

    .line 696
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 697
    const-string v1, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    :goto_0
    return-void

    .line 700
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    .local v0, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_3
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    :try_start_4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 704
    :catch_0
    move-exception v7

    .line 705
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 711
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 709
    .end local v0    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 711
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 646
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 647
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 649
    .local v10, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 650
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "createSession"

    move/from16 v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 652
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_0

    .line 653
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Controller callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    .end local v5    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 655
    .restart local v5    # "resolvedUserId":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v0

    move v4, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    # invokes: Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 658
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .locals 8
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    .line 786
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 787
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 788
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 790
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 793
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V

    .line 794
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return-void

    .line 794
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 796
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 10
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 744
    :cond_0
    const-string v7, "MediaSessionService"

    const-string v8, "Attempted to dispatch null or non-media key event."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 749
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 750
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 752
    .local v2, "token":J
    :try_start_0
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$1800()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 753
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchMediaKeyEvent, pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", event="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_2
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v7

    if-nez v7, :cond_3

    .line 759
    const-string v7, "MediaSessionService"

    const-string v8, "Not dispatching media key event because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 764
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 767
    :try_start_2
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 768
    .local v5, "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v5, :cond_4

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v7

    if-nez v7, :cond_5

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 771
    .local v6, "useNotPlayingSessions":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)I

    move-result v9

    invoke-virtual {v7, v9, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 773
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 774
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 778
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 780
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 768
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 776
    .restart local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v6    # "useNotPlayingSessions":Z
    :cond_6
    :try_start_3
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_2

    .line 778
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "ur":Lcom/android/server/media/MediaSessionService$UserRecord;
    .end local v6    # "useNotPlayingSessions":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 780
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 820
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump MediaSessionService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void

    .line 828
    :cond_0
    const-string v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 831
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 832
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sessions listeners."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 834
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Sessions:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 836
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const-string v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 839
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 841
    const-string v3, "User Records:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 843
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 844
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 845
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 847
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_2
    monitor-exit v4

    goto/16 :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 665
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 666
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 669
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 670
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 672
    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 674
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 675
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 676
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v9

    invoke-interface {v9}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :cond_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 678
    .end local v1    # "i":I
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 681
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 719
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    .line 720
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    .local v1, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    .end local v1    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 729
    return-void

    .line 728
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 724
    .restart local v0    # "index":I
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 6
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 802
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 803
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 804
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 806
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v5, "listen for volume changes"

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceSystemUiPermission(Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 807
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # setter for: Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->access$2302(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    return-void

    .line 809
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
