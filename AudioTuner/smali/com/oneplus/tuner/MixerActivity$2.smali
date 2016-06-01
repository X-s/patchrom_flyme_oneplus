.class Lcom/oneplus/tuner/MixerActivity$2;
.super Ljava/lang/Object;
.source "MixerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 352
    iput-object p1, p0, Lcom/oneplus/tuner/MixerActivity$2;->this$0:Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity$2;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/MixerActivity;->mCustomConfigTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/tuner/MixerActivity$2;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v4, v4, Lcom/oneplus/tuner/MixerActivity;->mPopupAdapter:Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;

    invoke-virtual {v4, p3}, Lcom/oneplus/tuner/adapter/ConfigSpinnerAdapter;->getStyle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 360
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 361
    check-cast v1, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 363
    .local v1, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_start_0
    iget-boolean v3, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    if-eqz v3, :cond_1

    .line 364
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setDefaultUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/oneplus/tuner/MixerActivity$2;->this$0:Lcom/oneplus/tuner/MixerActivity;

    iget-object v3, v3, Lcom/oneplus/tuner/MixerActivity;->listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 375
    return-void

    .line 367
    .restart local v1    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
