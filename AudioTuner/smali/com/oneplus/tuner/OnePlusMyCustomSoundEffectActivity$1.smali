.class Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;
.super Ljava/lang/Object;
.source "OnePlusMyCustomSoundEffectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsConfigEmpty:Z
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->access$000(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;

    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneConfigEmptyState()Z

    move-result v1

    # setter for: Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mIsConfigEmpty:Z
    invoke-static {v0, v1}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->access$002(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;Z)Z

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;->access$100(Lcom/oneplus/tuner/OnePlusMyCustomSoundEffectActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->onReLoad()V

    .line 46
    return-void
.end method
