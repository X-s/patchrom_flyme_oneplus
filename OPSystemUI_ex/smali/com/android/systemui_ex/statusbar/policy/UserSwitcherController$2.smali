.class Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 299
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 300
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->cancel()V

    .line 302
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    const/4 v7, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6, v7}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$502(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 305
    :cond_0
    const-string v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 306
    .local v1, "currentId":I
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 307
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 308
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    .line 309
    .local v4, "record":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v6, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v6, :cond_2

    .line 307
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_2
    iget-object v6, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v1, :cond_5

    const/4 v5, 0x1

    .line 311
    .local v5, "shouldBeCurrent":Z
    :goto_2
    iget-boolean v6, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v6, v5, :cond_3

    .line 312
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_3
    if-eqz v5, :cond_4

    iget-boolean v6, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v6, :cond_4

    .line 315
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    iget-object v7, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    # setter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I
    invoke-static {v6, v7}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$602(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)I

    .line 317
    :cond_4
    if-eqz v1, :cond_1

    iget-boolean v6, v4, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v6, :cond_1

    .line 319
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 310
    .end local v5    # "shouldBeCurrent":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 323
    .end local v4    # "record":Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->notifyAdapters()V
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;)V

    .line 325
    .end local v0    # "N":I
    .end local v1    # "currentId":I
    .end local v3    # "i":I
    :cond_7
    const/16 v2, -0x2710

    .line 326
    .local v2, "forcePictureLoadForId":I
    const-string v6, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 327
    const-string v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 330
    :cond_8
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
    invoke-static {v6, v2}, Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui_ex/statusbar/policy/UserSwitcherController;I)V

    .line 331
    return-void
.end method
