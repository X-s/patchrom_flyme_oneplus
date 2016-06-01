.class Lcom/oneplus/tuner/MixerActivity$4;
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
    .line 393
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mClickableFlag:Z
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$200(Lcom/oneplus/tuner/MixerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$300(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$400(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06f0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mIsSuccessLogin:Z
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$500(Lcom/oneplus/tuner/MixerActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 409
    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$600(Lcom/oneplus/tuner/MixerActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const v3, 0x7f0c0597

    # invokes: Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/oneplus/tuner/MixerActivity;->access$100(Lcom/oneplus/tuner/MixerActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0, v2}, Lcom/oneplus/tuner/MixerActivity;->doRefreshOrGetToken(Z)V

    goto :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mIsFromList:Z
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$700(Lcom/oneplus/tuner/MixerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mPassInSoundEffect:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$800(Lcom/oneplus/tuner/MixerActivity;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v3, v0, Lcom/oneplus/tuner/MixerActivity;->mSaveButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mStatus:I
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$000(Lcom/oneplus/tuner/MixerActivity;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const v4, 0x7f0c0595

    # invokes: Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/oneplus/tuner/MixerActivity;->access$100(Lcom/oneplus/tuner/MixerActivity;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # setter for: Lcom/oneplus/tuner/MixerActivity;->mClickableFlag:Z
    invoke-static {v0, v2}, Lcom/oneplus/tuner/MixerActivity;->access$202(Lcom/oneplus/tuner/MixerActivity;Z)Z

    .line 422
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    # getter for: Lcom/oneplus/tuner/MixerActivity;->mHasClickCollectBtn:Z
    invoke-static {v0}, Lcom/oneplus/tuner/MixerActivity;->access$900(Lcom/oneplus/tuner/MixerActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    # setter for: Lcom/oneplus/tuner/MixerActivity;->mHasClickCollectBtn:Z
    invoke-static {v3, v0}, Lcom/oneplus/tuner/MixerActivity;->access$902(Lcom/oneplus/tuner/MixerActivity;Z)Z

    .line 424
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/tuner/MixerActivity$4$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/MixerActivity$4$1;-><init>(Lcom/oneplus/tuner/MixerActivity$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 419
    :cond_5
    iget-object v0, p0, Lcom/oneplus/tuner/MixerActivity$4;->this$0:Lcom/oneplus/tuner/MixerActivity;

    const v4, 0x7f0c0596

    # invokes: Lcom/oneplus/tuner/MixerActivity;->getStr(I)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/oneplus/tuner/MixerActivity;->access$100(Lcom/oneplus/tuner/MixerActivity;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v0, v2

    .line 422
    goto :goto_2
.end method
