.class Lcom/oneplus/tuner/base/BaseActivity$6$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/BaseActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/base/BaseActivity$6;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/BaseActivity$6;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$6$1;->this$1:Lcom/oneplus/tuner/base/BaseActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$6$1;->this$1:Lcom/oneplus/tuner/base/BaseActivity$6;

    iget-object v1, v1, Lcom/oneplus/tuner/base/BaseActivity$6;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/OnePlusCollectionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$6$1;->this$1:Lcom/oneplus/tuner/base/BaseActivity$6;

    iget-object v1, v1, Lcom/oneplus/tuner/base/BaseActivity$6;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 551
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$6$1;->this$1:Lcom/oneplus/tuner/base/BaseActivity$6;

    iget-object v1, v1, Lcom/oneplus/tuner/base/BaseActivity$6;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, p0, Lcom/oneplus/tuner/base/BaseActivity$6$1;->this$1:Lcom/oneplus/tuner/base/BaseActivity$6;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity$6;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v2, v2, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/oneplus/tuner/base/BaseActivity;->finishActivity(Landroid/app/Activity;)V
    invoke-static {v1, v2}, Lcom/oneplus/tuner/base/BaseActivity;->access$100(Lcom/oneplus/tuner/base/BaseActivity;Landroid/app/Activity;)V

    .line 552
    return-void
.end method
