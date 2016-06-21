.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 4192
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->mAnimator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4195
    sget-boolean v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4198
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4200
    const/4 v3, 0x0

    .line 4201
    .local v3, "flags":I
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4202
    .local v5, "reason":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "recentapps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4203
    or-int/lit8 v3, v3, 0x2

    .line 4205
    :cond_1
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4284
    .end local v3    # "flags":I
    .end local v5    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4207
    :cond_3
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4208
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4209
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v7, v10}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    .line 4210
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static {v7, v10}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    .line 4211
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 4212
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 4213
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 4215
    :cond_4
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4216
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4218
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 4219
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v7, v11}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)V

    .line 4220
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 4222
    :cond_5
    const-string v7, "com.android.systemui.demo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4223
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4224
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 4225
    const-string v7, "command"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4226
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 4228
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v2, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4229
    :catch_0
    move-exception v6

    .line 4230
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error running demo command, intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4234
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "command":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_6
    const-string v7, "fake_artwork"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4238
    const-string v7, "com.android.keyguard.back"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4239
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    goto/16 :goto_0

    .line 4240
    :cond_7
    const-string v7, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4241
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateWallpaper()V
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4244
    :cond_8
    const-string v7, "com.oneplus.intent.action.PHONE_IGNORE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4245
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4246
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 4247
    const-string v7, "ignore"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4248
    .local v2, "command":I
    const-string v7, "number"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4249
    .local v4, "number":Ljava/lang/String;
    if-nez v2, :cond_b

    .line 4250
    sget-boolean v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    if-nez v7, :cond_9

    .line 4251
    const-string v7, "PhoneStatusBar"

    const-string v8, "set DialIgnoreView to Visible"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :cond_9
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4254
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreBackgroundView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4256
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->mAnimator:Landroid/animation/Animator;

    if-nez v7, :cond_a

    .line 4257
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startIgnoreViewAnimation(Landroid/view/View;)Landroid/animation/Animator;
    invoke-static {v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->mAnimator:Landroid/animation/Animator;

    .line 4259
    :cond_a
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z
    invoke-static {v7, v10}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4260
    sput-boolean v11, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    goto/16 :goto_0

    .line 4262
    :cond_b
    if-ne v2, v11, :cond_2

    .line 4263
    sget-boolean v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    if-eqz v7, :cond_c

    .line 4264
    const-string v7, "PhoneStatusBar"

    const-string v8, "set DialIgnoreView to Invisible"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    :cond_c
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreView:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4267
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->dialIgnoreBackgroundView:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4269
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->mAnimator:Landroid/animation/Animator;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->stopIgnoreViewAnimation(Landroid/animation/Animator;)V
    invoke-static {v7, v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/animation/Animator;)V

    .line 4270
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->mAnimator:Landroid/animation/Animator;

    .line 4271
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTempHideIgnoreView:Z
    invoke-static {v7, v10}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$7902(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4272
    sput-boolean v10, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mIsDialIgnoreViewVisible:Z

    goto/16 :goto_0

    .line 4278
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "command":I
    .end local v4    # "number":Ljava/lang/String;
    :cond_d
    const-string v7, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_0
.end method
