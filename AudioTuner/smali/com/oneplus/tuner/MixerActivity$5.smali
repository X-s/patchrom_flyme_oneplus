.class Lcom/oneplus/tuner/MixerActivity$5;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MixerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MixerActivity;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$5;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    sget-boolean v1, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v1, :cond_1

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$5;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const-class v2, Lcom/oneplus/tuner/ShareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$5;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v1}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "category"

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$5;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$5;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/MixerActivity;->startActivity(Landroid/content/Intent;)V

    .line 540
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0700

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
