.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/IIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$userIds"    # [I
    .param p3, "val$action"    # Ljava/lang/String;
    .param p4, "val$pkg"    # Ljava/lang/String;
    .param p5, "val$extras"    # Landroid/os/Bundle;
    .param p6, "val$targetPkg"    # Ljava/lang/String;
    .param p7, "val$flags"    # I
    .param p8, "val$finishedReceiver"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 12046
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userIds:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$extras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$12;->val$targetPkg:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$12;->val$flags:I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$12;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 12050
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 12051
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v2, :cond_0

    return-void

    .line 12053
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$userIds:[I

    if-nez v3, :cond_5

    .line 12054
    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v18

    .line 12058
    .local v18, "resolvedUserIds":[I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v20, v3

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    aget v15, v18, v20

    .line 12059
    .local v15, "id":I
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$12;->val$action:Ljava/lang/String;

    .line 12060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$pkg:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string/jumbo v3, "package"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$12;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 12059
    :goto_2
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12061
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 12062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 12064
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$targetPkg:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 12065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$targetPkg:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12068
    :cond_2
    const-string/jumbo v3, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 12069
    .local v19, "uid":I
    if-lez v19, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, v15, :cond_3

    .line 12070
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v15, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v19

    .line 12071
    const-string/jumbo v3, "android.intent.extra.UID"

    move/from16 v0, v19

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12073
    :cond_3
    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v4, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12074
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12075
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_BROADCASTS:Z

    if-eqz v3, :cond_4

    .line 12076
    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12077
    .local v17, "here":Ljava/lang/RuntimeException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 12078
    const-string/jumbo v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sending to user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 12079
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 12078
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 12080
    const-string/jumbo v6, " "

    .line 12078
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 12080
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 12078
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12082
    .end local v17    # "here":Ljava/lang/RuntimeException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$12;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    .line 12084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$12;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    .line 12082
    :goto_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 12083
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 12084
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 12082
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 12058
    add-int/lit8 v3, v20, 0x1

    move/from16 v20, v3

    goto/16 :goto_1

    .line 12056
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v18    # "resolvedUserIds":[I
    .end local v19    # "uid":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$12;->val$userIds:[I

    move-object/from16 v18, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v18    # "resolvedUserIds":[I
    goto/16 :goto_0

    .line 12060
    .restart local v15    # "id":I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 12084
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v19    # "uid":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 12086
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v15    # "id":I
    .end local v18    # "resolvedUserIds":[I
    .end local v19    # "uid":I
    :catch_0
    move-exception v16

    .line 12048
    :cond_8
    return-void
.end method
