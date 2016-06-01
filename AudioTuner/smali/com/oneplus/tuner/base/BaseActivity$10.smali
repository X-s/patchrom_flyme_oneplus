.class Lcom/oneplus/tuner/base/BaseActivity$10;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 616
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$10;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 620
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$10;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$10;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iput-boolean p2, v0, Lcom/oneplus/tuner/base/BaseActivity;->mIsAudioEffectEnable:Z

    .line 622
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$10;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$10;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-boolean v1, v1, Lcom/oneplus/tuner/base/BaseActivity;->mIsAudioEffectEnable:Z

    invoke-virtual {v0, v1}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$10;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->switchme:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 624
    return-void
.end method
