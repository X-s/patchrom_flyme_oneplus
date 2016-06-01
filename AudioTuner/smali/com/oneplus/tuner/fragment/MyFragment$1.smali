.class Lcom/oneplus/tuner/fragment/MyFragment$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/MyFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/MyFragment;

.field final synthetic val$manager:Lcom/waves/maxxaudio/MaxxAudioManager;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/MyFragment;Lcom/waves/maxxaudio/MaxxAudioManager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/MyFragment$1;->this$0:Lcom/oneplus/tuner/fragment/MyFragment;

    iput-object p2, p0, Lcom/oneplus/tuner/fragment/MyFragment$1;->val$manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyFragment$1;->this$0:Lcom/oneplus/tuner/fragment/MyFragment;

    # getter for: Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/MyFragment;->access$000(Lcom/oneplus/tuner/fragment/MyFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyFragment$1;->val$manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v0, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyFragment$1;->this$0:Lcom/oneplus/tuner/fragment/MyFragment;

    # getter for: Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/MyFragment;->access$000(Lcom/oneplus/tuner/fragment/MyFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 64
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyFragment$1;->val$manager:Lcom/waves/maxxaudio/MaxxAudioManager;

    invoke-virtual {v0, v1}, Lcom/waves/maxxaudio/MaxxAudioManager;->setEnabled(Z)V

    goto :goto_0
.end method
