.class Lcom/oneplus/tuner/MixerActivity$10;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/MixerActivity;->onHeadsetPlugged()V
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
    .line 778
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$10;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 783
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 784
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$10;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const-class v2, Lcom/oneplus/tuner/ShareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 785
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$10;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v1}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 786
    const-string v1, "category"

    iget-object v2, p0, Lcom/oneplus/tuner/MixerActivity$10;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$10;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/MixerActivity;->startActivity(Landroid/content/Intent;)V

    .line 789
    return-void
.end method
