.class public Lcom/oneplus/tuner/fragment/MyFragment;
.super Landroid/app/Fragment;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private custom:Landroid/view/View;

.field private myCustom:Landroid/view/View;

.field private myconfig:Landroid/view/View;

.field private setting:Landroid/view/View;

.field private soundeffectSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/MyFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/MyFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    const v1, 0x7f0b014c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->myconfig:Landroid/view/View;

    .line 31
    const v1, 0x7f0b014d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->myCustom:Landroid/view/View;

    .line 32
    const v1, 0x7f0b014e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->custom:Landroid/view/View;

    .line 33
    const v1, 0x7f0b014f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    .line 34
    const v1, 0x7f0b0150

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->setting:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->myconfig:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->myCustom:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->custom:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->setting:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    const v2, 0x7f0201bb

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    const v2, 0x7f0201ba

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 47
    :cond_1
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v0

    .line 48
    .local v0, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 49
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    sget-boolean v1, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/waves/maxxaudio/MaxxAudioManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 51
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/oneplus/tuner/fragment/MyFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/tuner/fragment/MyFragment$1;-><init>(Lcom/oneplus/tuner/fragment/MyFragment;Lcom/waves/maxxaudio/MaxxAudioManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    return-void

    .line 49
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->myconfig:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/MyConfigActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->myCustom:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->custom:Landroid/view/View;

    if-ne v1, p1, :cond_2

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/tuner/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/MixerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->soundeffectSwitch:Landroid/widget/Switch;

    if-eq v1, p1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/MyFragment;->setting:Landroid/view/View;

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/oneplus/tuner/fragment/MyFragment;->initView(Landroid/view/View;)V

    .line 26
    return-object v0
.end method
