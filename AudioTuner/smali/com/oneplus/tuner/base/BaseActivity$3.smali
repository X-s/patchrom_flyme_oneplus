.class Lcom/oneplus/tuner/base/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/BaseActivity;->findSlideMenuViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$3;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 479
    sget-boolean v2, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-eqz v2, :cond_0

    .line 480
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 481
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "oneplus.provision.action.AccountMain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v2, "action"

    const-string v3, "action.OPTUNER.MainActivityAction"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v2, "diaodiao"

    iget-object v3, p0, Lcom/oneplus/tuner/base/BaseActivity$3;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$3;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/oneplus/tuner/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 487
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$3;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 488
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 492
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$3;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/base/BaseActivity;->doRefreshOrGetToken(Z)V

    goto :goto_0
.end method
